//
//  ContentView.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/15/24.
//

import Combine
import SwiftUI

private enum Layout {
    static let padding = CGFloat(30)
    static let buttonSpacing = CGFloat(3)
    static let backgroundColorDefault = Color(#colorLiteral(red: 0.3147028089, green: 0.3147028089, blue: 0.3147028089, alpha: 0.5))

    static let deleteIconColorActive = Color(#colorLiteral(red: 1, green: 0.3347105384, blue: 0, alpha: 1))

    enum Meter {
        static let color = Color(#colorLiteral(red: 0.9039319158, green: 0.7066531777, blue: 1, alpha: 1))
        static let shadowColor = Color(#colorLiteral(red: 0.7427280545, green: 0.2272533774, blue: 1, alpha: 1))
        static let shadowRadius = CGFloat(24)
        static let outlineWidth = CGFloat(3)
        static let size = CGSize(width: 370, height: 1)

        static let needleGradient = LinearGradient(colors: [Color(#colorLiteral(red: 1, green: 0.06666666667, blue: 0.06666666667, alpha: 1)), color], startPoint: .top, endPoint: .bottom)
        static let needleStartAngle = Angle(degrees: -70)
        static let needleEndAngle = Angle(degrees: 70)
    }

    static let needleAnimationDuration = TimeInterval(1.41)
    static let meterRemovalDuration = TimeInterval(0.45)
    static let meterOpacityDuration1 = TimeInterval(0.4)
    static let meterRotationDuration = TimeInterval(0.8)
    static let meterScaleDuration = TimeInterval(0.45 / 2)
}

struct MeterValues {
    var opacity = CGFloat(0.1)
    var angle = Angle(degrees: -45)
    var scale = CGFloat(1) // 1.2 -> 5
    var emojiSize = CGFloat(100)
}


extension ContentView {
    enum BoostState {
        case inactive
        case pendingRemoval
        case charging
        case boosting
    }

    final class ViewModel: ObservableObject {
        let boostState: CurrentValueSubject<BoostState, Never> = .init(BoostState.inactive)
    }
}


struct ContentView: View {
    @State private var likeCount: Int = .zero
    @State private var state = BoostState.inactive
    @State private var deleteButtonFrame = CGRect(origin: .zero, size: .zero)
    @State private var colors: [Color] = Array(repeating: Color(#colorLiteral(red: 0.9039319158, green: 0.7066531777, blue: 1, alpha: 1)), count: Boostometer.textPaths.count)
    @State private var colorStep = 0
    @State private var timer: Timer?
    @State private var emojiFontSize = CGFloat(60)
    @State private var shouldAnimateDeleteButton = false
    @State private var needleAngle = Layout.Meter.needleStartAngle

    var body: some View {
        VStack(spacing: .zero) {
            Spacer()

            ZStack(alignment: .bottom) {
                boostometer

                if state == .pendingRemoval {
                    removeActionLabel
                }
            }

            VStack(spacing: Layout.padding) {
                deleteButton

                likeButton

                Text("Hold to boost")
                    .font(.body)
                    .foregroundStyle(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.black
                .ignoresSafeArea()
        )
    }

    private var boostometer: some View {
        Canvas { context, size in
            let rect = CGRect(origin: .zero, size: size)

            if let outline = context.resolveSymbol(id: "Outline") {
                context.draw(outline, in: rect)
            }

            for index in 0..<Boostometer.textPaths.count {
                if let symbol = context.resolveSymbol(id: index) {
                    context.draw(symbol, in: rect)
                }
            }

            if let needle = context.resolveSymbol(id: "Needle") {
                context.draw(needle, in: rect)
            }

            if let symbol = context.resolveSymbol(id: "💖") {
                context.draw(symbol, at: CGPoint(x: size.width / 2, y: size.height * 0.28))
            }
        } symbols: {
            Boostometer.Outline()
                .stroke(Layout.Meter.color, lineWidth: Layout.Meter.outlineWidth)
                .shadow(color: Layout.Meter.shadowColor, radius: Layout.Meter.shadowRadius)
                .tag("Outline")

            /// Create text paths as symbols in order to animate fill color with explicit animation
            ForEach(Array(Boostometer.textPaths.enumerated()), id: \.offset) { index, path in
                path
                    .fill(Color(colors[index]))
                    .frame(width: Boostometer.aspectRatio, height: 1)
                    .tag(index)
            }

            ZStack {
                Boostometer.Needle()
                    .fill(Layout.Meter.needleGradient)
                    .rotationEffect(needleAngle, anchor: .init(x: 0.5, y: 0.6))
                    .mask(
                        Boostometer.Outline()
                    )

                // TODO: add needle tip
            }
            .tag("Needle")

            // TODO: animate emojiFontSize
            Text("💖")
                .font(.system(size: emojiFontSize))
                .tag("💖")
        }
        .aspectRatio(Boostometer.aspectRatio, contentMode: .fill)
        .frame(width: Layout.Meter.size.width, height: Layout.Meter.size.height)
        .background(.green)
        .shadow(color: Layout.Meter.shadowColor, radius: Layout.Meter.shadowRadius)
        // TODO: reset values when state is not charging or boosting
        .keyframeAnimator(
            initialValue: MeterValues(),
            trigger: state == .charging || state == .boosting
        ) { content, value in
            content
                .opacity(state == .charging || state == .boosting ? value.opacity : 0)
                .rotationEffect(state == .charging || state == .boosting ? value.angle : Angle(degrees: -45), anchor: .bottom)
                .scaleEffect(state == .boosting ? value.scale : 1, anchor: .bottom)
        } keyframes: { _ in
            KeyframeTrack(\.opacity) {
                LinearKeyframe(1, duration: Layout.meterOpacityDuration1)
                LinearKeyframe(1, duration: Layout.needleAnimationDuration + Layout.meterScaleDuration)
                LinearKeyframe(0, duration: Layout.meterOpacityDuration1)
            }
            KeyframeTrack(\.angle) {
                SpringKeyframe(
                    .zero,
                    duration: Layout.meterRotationDuration,
                    spring: Spring(duration: 0.4, bounce: 0.6)
                )
            }

            KeyframeTrack(\.scale) {
                LinearKeyframe(1, duration: Layout.needleAnimationDuration + 0.3)
                CubicKeyframe(1.2, duration: Layout.meterScaleDuration)
                CubicKeyframe(0.5, duration: Layout.meterScaleDuration)
            }
        }
        .onChange(of: state) { oldValue, newValue in
            switch newValue {
            case .charging:
                timer = Timer.scheduledTimer(withTimeInterval: Layout.needleAnimationDuration / Double(Boostometer.textPaths.count), repeats: true) { timer in
                    withAnimation(.easeInOut(duration: Layout.needleAnimationDuration / Double(Boostometer.textPaths.count))) {
                        colors[colorStep] = Color.white
                    }
                    colorStep += 1
                    if colorStep >= colors.count {
                        timer.invalidate()
                        colorStep = 0
                        state = .boosting
                    }
                }
                print("state charging")

            case .boosting:
                print("implement haptic")
                print("state boosting")

            case .pendingRemoval:

                withAnimation {
                    shouldAnimateDeleteButton = true
                    print("state pendingRemoval")
                }

            case .inactive:
                print("state inactive")
            }

            if newValue != .charging {
                timer?.invalidate()
            }

            if newValue != .boosting {
                colorStep = 0
                for i in 0..<colors.count {
                    colors[i] = Layout.Meter.color
                }
                needleAngle = Layout.Meter.needleStartAngle
            }
        }
    }

    private var removeActionLabel: some View {
        // TODO: animate in out
        Text("Remove reaction")
            .font(.headline)
            .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
            .foregroundStyle(Layout.deleteIconColorActive)
            .background(
                RoundedRectangle(
                    cornerRadius: 33,
                    style: .continuous
                )
                .fill(Layout.backgroundColorDefault)
            )
            .padding(.bottom, Layout.padding)
    }

    private var deleteButton: some View {
        DeleteButton(
            isActive: state == .pendingRemoval
        )
        .onPreferenceChange(DeleteButtonFrameKey.self) { frame in
            deleteButtonFrame = frame
        }
    }

    private var likeButton: some View {
        Button(
            action: {
                likeCount += 1
            },
            label: {
                HStack(spacing: Layout.buttonSpacing) {
                    Text("💖")
                    if likeCount > .zero {
                        Text("\(likeCount)")
                    }
                }
            }
        )
        .buttonStyle(LikeButtonStyle())
        .simultaneousGesture(
            LongPressGesture(minimumDuration: 0.5)
                .sequenced(before: DragGesture(minimumDistance: 0, coordinateSpace: .global))
                .onChanged { value in
                    switch value {
                    case .first(true):
                        print("Long press 0.5 started ")
                    case .second(true, let drag):
                        print("drag started, drag value: \(drag != nil)")
                        withAnimation {
                            state = .charging
                        }
                        withAnimation(.easeInOut(duration: Layout.needleAnimationDuration)) {
                            needleAngle = Layout.Meter.needleEndAngle
                        }
                        if let location = drag?.location {
                            if deleteButtonFrame.contains(location) {
                                state = .pendingRemoval
                            }
                        }
                    default:
                        withAnimation {
                            state = .inactive
                        }
                        print("inactive")
                    }
                }
                .onEnded { value in
                    switch value {
                    case .first(let value1):
                        print("long press 0.5 stopped, value:\(value1)")
                    case .second(let value1, let drag):
                        print("drag stopped value1: \(value1), drag value:\(drag != nil)")
                        withAnimation(.easeOut(duration: 0.1)) {
                            if state == .pendingRemoval {
                                state = .inactive
                            } else if state == .charging {
                                state = .inactive
                            }
                        }
                    }
                }
        )
    }
}

#Preview {
    ContentView()
}



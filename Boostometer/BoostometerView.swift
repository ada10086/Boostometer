//
//  BoostometerView.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/17/24.
//

import SwiftUI

private enum SymbolID {
    static let needle = "Needle"
    static let outline = "Outline"
    static let heart = "Heart"
}

private enum Layout {
    static let color = Color(#colorLiteral(red: 0.8745098039, green: 0.6274509804, blue: 1, alpha: 1))
    static let textColor = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    static let shadowColor = Color(#colorLiteral(red: 0.6784313725, green: 0, blue: 1, alpha: 1))
    static let shadowOpacity = CGFloat(0.5)
    static let shadowRadius = CGFloat(24)
    static let outlineWidth = CGFloat(3)
    static let size = CGSize(width: 370, height: 1)

    static let meterStartAngle = Angle(degrees: -45)
    static let meterTextOpacity = CGFloat(0.5)
    static let needleGradient = LinearGradient(colors: [Color(#colorLiteral(red: 1, green: 0.06666666667, blue: 0.06666666667, alpha: 1)), color], startPoint: .top, endPoint: .bottom)
    static let needleStartAngle = Angle(degrees: -70)
    static let needleEndAngle = Angle(degrees: 70)
    static let emojiFontSize = CGFloat(60)
    static let emojiScale = CGFloat(1.4)
    static let scaleLarge = CGFloat(1.2)
    static let scaleSmall = CGFloat(0.05)

    static let meterOpacityDuration1 = TimeInterval(0.4)
    static let meterOpacityDuration2 = TimeInterval(0.2)
    static let meterRemovalDuration = TimeInterval(0.45)
    static let meterRotationDuration = TimeInterval(0.8)
    static let meterScaleDuration = TimeInterval(0.45 / 2)
    static let needleAnimationDuration = TimeInterval(1.4)
    static let needleAnimationDelay = TimeInterval(0.3)
    static let shadowAnimationDuration = TimeInterval(1.2)
}

private struct AnimationValues {
    var opacity = CGFloat(0.1)
    var angle = Layout.meterStartAngle
    var scale = CGFloat(1)
    var shadowOpacity = Layout.shadowOpacity
}

struct BoostometerView: View {
    @Binding var state: BoostState

    @State private var meterTextOpacities: [CGFloat] = Array(repeating: Layout.meterTextOpacity, count: Boostometer.textPaths.count)
    @State private var needleAngle = Layout.needleStartAngle
    @State private var emojiScale = CGFloat(1)
    @State private var showMeter = false
    @State private var boostStep = 0
    @State private var timer: Timer?

    var body: some View {
        Canvas { context, size in
            let rect = CGRect(origin: .zero, size: size)

            if let outline = context.resolveSymbol(id: SymbolID.outline) {
                context.draw(outline, in: rect)
            }

            for index in 0..<Boostometer.textPaths.count {
                if let symbol = context.resolveSymbol(id: index) {
                    context.draw(symbol, in: rect)
                }
            }

            if let needle = context.resolveSymbol(id: SymbolID.needle) {
                context.draw(needle, in: rect)
            }

            if let symbol = context.resolveSymbol(id: SymbolID.heart) {
                context.draw(symbol, at: CGPoint(x: size.width / 2, y: size.height * 0.28))
            }
        } symbols: {
            Boostometer.Outline()
                .stroke(Layout.color, lineWidth: Layout.outlineWidth)
                .shadow(color: Layout.shadowColor, radius: Layout.shadowRadius)
                .tag(SymbolID.outline)

            /// Create text paths as symbols in order to animate fill color with explicit animation
            ForEach(Array(Boostometer.textPaths.enumerated()), id: \.offset) { index, path in
                path
                    .fill(
                        Layout.textColor
                            .opacity(meterTextOpacities[index])
                            .shadow(.inner(color: Layout.shadowColor.opacity(Layout.shadowOpacity), radius: 0.015))
                    )
                    .frame(width: Boostometer.aspectRatio, height: 1)
                    .shadow(color: Layout.shadowColor, radius: Layout.shadowRadius)
                    .tag(index)
            }

            ZStack {
                Boostometer.Needle()
                    .fill(Layout.needleGradient)
                    .rotationEffect(needleAngle, anchor: .init(x: 0.5, y: 0.6))
                    .mask(Boostometer.Outline())

                // TODO: add needle tip
            }
            .tag(SymbolID.needle)

            // TODO: shake animation
            Text("💖")
                .font(.system(size: Layout.emojiFontSize))
                .scaleEffect(emojiScale)
                .tag(SymbolID.heart)
        }
        .aspectRatio(Boostometer.aspectRatio, contentMode: .fill)
        .frame(width: Layout.size.width, height: Layout.size.height)
        .sensoryFeedback(.impact(weight: .medium), trigger: showMeter)
        .keyframeAnimator(
            initialValue: AnimationValues(),
            trigger: showMeter
        ) { content, value in
            content
                .opacity(showMeter ? value.opacity : 0)
                /// fix rotation angle to latest when pendingRemoval, prevent angle from animating back to start value
                .rotationEffect(showMeter || state == .pendingRemoval ? value.angle : Layout.meterStartAngle, anchor: .bottom)
                .scaleEffect(state == .boosting ? value.scale : 1, anchor: .bottom)
                .shadow(color: Layout.shadowColor.opacity(showMeter ? value.shadowOpacity : .zero), radius: Layout.shadowRadius)
        } keyframes: { _ in
            KeyframeTrack(\.opacity) {
                LinearKeyframe(1, duration: Layout.meterOpacityDuration1)
                LinearKeyframe(1, duration: Layout.needleAnimationDuration + Layout.needleAnimationDelay)
                LinearKeyframe(0, duration: Layout.meterOpacityDuration2)
            }
            KeyframeTrack(\.angle) {
                SpringKeyframe(
                    .zero,
                    duration: Layout.meterRotationDuration,
                    spring: Spring(duration: 0.4, bounce: 0.6)
                )
            }
            KeyframeTrack(\.shadowOpacity) {
                LinearKeyframe(Layout.shadowOpacity, duration: Layout.needleAnimationDelay)
                LinearKeyframe(1, duration: Layout.shadowAnimationDuration)
            }

            KeyframeTrack(\.scale) {
                LinearKeyframe(1, duration: Layout.needleAnimationDuration + Layout.needleAnimationDelay)
                LinearKeyframe(Layout.scaleLarge, duration: Layout.meterScaleDuration)
                LinearKeyframe(Layout.scaleSmall, duration: Layout.meterScaleDuration)
            }
        }
        .onChange(of: state) { oldValue, newValue in
            switch newValue {
            case .charging:
                debugPrint("state charging")
                if oldValue == .pendingRemoval {
                    /// override keyframe animations with regular animation
                    withAnimation {
                        showMeter = true
                    }
                } else {
                    showMeter = true
                }
                withAnimation(.linear(duration: Layout.needleAnimationDuration)) {
                    emojiScale = Layout.emojiScale
                    needleAngle = Layout.needleEndAngle
                }

                timer = Timer.scheduledTimer(
                    withTimeInterval: Layout.needleAnimationDuration / Double(Boostometer.textPaths.count),
                    repeats: true
                ) { timer in
                    withAnimation(.easeInOut(duration: Layout.needleAnimationDuration / Double(Boostometer.textPaths.count))) {
                        meterTextOpacities[boostStep] = 1
                    }
                    boostStep += 1
                    if boostStep >= meterTextOpacities.count {
                        timer.invalidate()
                        boostStep = 0
                        state = .boosting
                    }
                }

            case .boosting:
                debugPrint("state boosting")

            case .pendingRemoval:
                debugPrint("state pendingRemoval")
                reset()

            case .inactive:
                debugPrint("state inactive")
                reset()
            }

            if newValue != .charging {
                timer?.invalidate()
            }

            if newValue != .boosting {
                boostStep = 0
                for i in 0..<meterTextOpacities.count {
                    meterTextOpacities[i] = Layout.meterTextOpacity
                }
            }
        }
    }

    private func reset() {
        withAnimation(.easeOut(duration: 0.2)) {
            needleAngle = Layout.needleStartAngle
            showMeter = false
            emojiScale = 1
        }
    }
}

#Preview {
    BoostometerView(state: .constant(.inactive))
}

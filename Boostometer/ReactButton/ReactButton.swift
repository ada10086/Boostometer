//
//  ReactButton.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/21/24.
//

import SwiftUI

private enum Layout {
    static let buttonSpacing = CGFloat(3)
    static let longPressMinDuration = TimeInterval(0.5)
    static let textAnimationDuration = TimeInterval(2)
    static let textYOffset = CGFloat(-100)
}

struct ReactButton: View {
    @Binding var state: BoostState
    @Binding var removeButtonFrame: CGRect
    @State private var likeCount: Int = .zero
    @State private var reactButtonTrigger = false
    @State private var textIDs = [UUID]()

    var body: some View {
        ZStack {
            button
            floatingTexts
        }
    }

    private var button: some View {
        let longPressGesture =  LongPressGesture(minimumDuration: Layout.longPressMinDuration)
            .onChanged { _ in
                /// Button touch down
                reactButtonTrigger.toggle()
            }
            .onEnded { _ in
                state = .charging
            }

        let dragGesture = DragGesture(minimumDistance: .zero, coordinateSpace: .global)
            .onChanged { value in
                /// flag to prevent dragging gesture from resetting state to charging when state is boosting
                guard state != .boosting else {
                    return
                }
                if removeButtonFrame.contains(value.location) {
                    state = .pendingRemoval
                } else {
                    state = .charging
                }
            }
            .onEnded { _ in
                state = .inactive
            }

        return Button(
            action: {
                likeCount += 1
                addFloatingText()
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
        .buttonStyle(ReactButtonStyle())
        .sensoryFeedback(.impact(weight: .light), trigger: reactButtonTrigger)
        .sensoryFeedback(.success, trigger: likeCount)
        .simultaneousGesture(
            longPressGesture
                .sequenced(before: dragGesture)
        )
    }

    private var floatingTexts: some View {
        // TODO: fix first Text not animating
        ForEach(textIDs, id: \.self) { id in
            Text("+1")
                .id(id)
                .font(.body)
                .foregroundStyle(.white)
                .keyframeAnimator(
                    initialValue: AnimationValues(),
                    trigger: likeCount
                ) { content, value in
                    content
                        .offset(x: value.xOffSet, y: value.yOffset)
                        .opacity(value.opacity)
                } keyframes: { _ in
                    KeyframeTrack(\.opacity) {
                        LinearKeyframe(1, duration: Layout.textAnimationDuration / 2)
                        LinearKeyframe(0, duration: Layout.textAnimationDuration / 2)
                    }

                    KeyframeTrack(\.xOffSet) {
                        CubicKeyframe(CGFloat.random(in: -10...10), duration: TimeInterval.random(in: 0.2...0.5))
                        CubicKeyframe(CGFloat.random(in: -10...10), duration: TimeInterval.random(in: 0.2...0.5))
                        CubicKeyframe(CGFloat.random(in: -10...10), duration: TimeInterval.random(in: 0.2...0.5))
                        CubicKeyframe(CGFloat.random(in: -10...10), duration: TimeInterval.random(in: 0.2...0.5))
                    }

                    KeyframeTrack(\.yOffset) {
                        CubicKeyframe(Layout.textYOffset, duration: Layout.textAnimationDuration)
                    }
                }
        }
    }

    private func addFloatingText() {
        let id = UUID()
        textIDs.append(id)

        DispatchQueue.main.asyncAfter(deadline: .now() + Layout.textAnimationDuration + 1) {
            textIDs.removeAll { $0 == id }
        }
    }
}

#Preview {
    ReactButton(state: .constant(.inactive), removeButtonFrame: .constant(.zero))
}

extension ReactButton {
    private struct AnimationValues {
        var opacity = CGFloat(0)
        var xOffSet = CGFloat(0)
        var yOffset = CGFloat(0)
    }
}

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
    static let bottomPadding = CGFloat(115)
    static let backgroundColorDefault = Color(#colorLiteral(red: 0.3147028089, green: 0.3147028089, blue: 0.3147028089, alpha: 0.5))
    static let removeLabelColor = Color(#colorLiteral(red: 1, green: 0.3347105384, blue: 0, alpha: 1))
    static let removeLabelPadding = EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16)
    static let removeLabelCornerRadius = CGFloat(33)
    static let removeButtonHeight = CGFloat(80)
}

enum BoostState {
    case inactive
    case pendingRemoval
    case charging
    case boosting
}

struct ContentView: View {
    @State private var state = BoostState.inactive
    @State private var removeButtonFrame: CGRect = .zero

    var body: some View {
        VStack(spacing: .zero) {
            Spacer()

            ZStack(alignment: .bottom) {
                BoostometerView(state: $state)

                if state == .pendingRemoval {
                    removeLabel
                }
            }

            VStack(spacing: Layout.padding) {
                removeButton
                ReactButton(state: $state, removeButtonFrame: $removeButtonFrame)
                holdToBoostLabel
            }
            .padding(.bottom, Layout.bottomPadding)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.black
                .ignoresSafeArea()
        )
        .sensoryFeedback(.success, trigger: state) { oldValue, newValue in
            newValue == .boosting
        }
        .animation(.spring(duration: 0.3, bounce: 0.5), value: state == .charging)
        .animation(.spring(duration: 0.3, bounce: 0.5), value: state == .pendingRemoval)
    }

    private var removeLabel: some View {
        Text("Remove reaction")
            .font(.headline)
            .padding(Layout.removeLabelPadding)
            .foregroundStyle(Layout.removeLabelColor)
            .background(
                RoundedRectangle(cornerRadius: Layout.removeLabelCornerRadius)
                    .fill(Layout.backgroundColorDefault)
            )
            .padding(.bottom, Layout.padding)
            .transition(.move(edge: .bottom).combined(with: .opacity))
    }

    private var removeButton: some View {
        VStack {
            if state == .charging || state == .pendingRemoval {
                RemoveButton(
                    isActive: state == .pendingRemoval
                )
                .onPreferenceChange(RemoveButtonFrameKey.self) { frame in
                    removeButtonFrame = frame
                }
                .transition(.move(edge: .bottom).combined(with: .opacity))
                .sensoryFeedback(.impact(weight: .heavy), trigger: state == .pendingRemoval)
            } else {
                Spacer()
            }
        }
        .frame(height: Layout.removeButtonHeight)
    }

    private var holdToBoostLabel: some View {
        Text("Hold to boost")
            .font(.body)
            .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}



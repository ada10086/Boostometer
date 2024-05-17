//
//  DeleteButton.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/17/24.
//

import SwiftUI

private enum Layout {
    static let padding = CGFloat(14)
    static let deleteIconColorDefault = Color(#colorLiteral(red: 1, green: 0.9999999404, blue: 1, alpha: 0.6))
    static let deleteIconColorActive = Color(#colorLiteral(red: 1, green: 0.3347105384, blue: 0, alpha: 1))
    static let deleteBackgroundColorDefault = Color(#colorLiteral(red: 0.3147028089, green: 0.3147028089, blue: 0.3147028089, alpha: 0.5))
    static let deleteBackgroundColorActive = Color(#colorLiteral(red: 1, green: 0.3347105384, blue: 0, alpha: 0.1))
}

struct DeleteButtonFrameKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {}
}

struct DeleteButton: View {
    let isActive: Bool

    var body: some View {
        Image(.delete)
            .padding(Layout.padding)
            .foregroundStyle(isActive ? Layout.deleteIconColorActive : Layout.deleteIconColorDefault)
            .background(
                Circle()
                    .fill(isActive ? Layout.deleteBackgroundColorActive : Layout.deleteBackgroundColorDefault)
            )
            .scaleEffect(isActive ? 1.33 : 1, anchor: .center)
            .background(
                GeometryReader { geometry in
                    Color.clear
                        .preference(
                            key: DeleteButtonFrameKey.self,
                            value: geometry.frame(in: .global)
                        )
                }
            )
            .animation(.linear(duration: 0.1), value: isActive)
    }
}

#Preview {
    DeleteButton(isActive: true)
}

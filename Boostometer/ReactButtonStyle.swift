//
//  ReactButtonStyle.swift
//  Boostometer
//
//  Created by Ada Jiang on 5/17/24.
//

import SwiftUI

private enum Layout {
    static let buttonPadding = EdgeInsets(top: 14, leading: 23, bottom: 14, trailing: 23)    
    static let cornerRadius = CGFloat(33)
    static let backgroundColorPressed = Color(#colorLiteral(red: 0.4751122594, green: 0.750189662, blue: 1, alpha: 0.1))
    static let backgroundColorDefault = Color(#colorLiteral(red: 0.3147028089, green: 0.3147028089, blue: 0.3147028089, alpha: 0.5))
    static let foregroundColorPressed = Color(#colorLiteral(red: 0.542722404, green: 0.7470401525, blue: 0.9852973819, alpha: 1))
    static let foregroundColorDefault = Color.white
}

struct ReactButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(Layout.buttonPadding)
            .foregroundColor(configuration.isPressed ? Layout.foregroundColorPressed : Layout.foregroundColorDefault)
            .background(
                RoundedRectangle(
                    cornerRadius: Layout.cornerRadius,
                    style: .continuous
                )
                .fill(configuration.isPressed ? Layout.backgroundColorPressed : Layout.backgroundColorDefault)
                .stroke(configuration.isPressed ? Layout.foregroundColorPressed : .clear, lineWidth: 2)
            )
     }
}

#Preview {
    Button("💖") {}
        .buttonStyle(ReactButtonStyle())
}

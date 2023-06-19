//
//  ViewModifiers.swift
//  BackgroundsAndOverlays
//
//  Created by Ashish Pisey on 19/06/23.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    var backgroundColor: Color
    var height: CGFloat
    var font: Font
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(font)
            .fontWeight(.medium)
            .frame(height: height)
            .frame(maxWidth: .infinity)
            .background(
                Color(backgroundColor)
            )
            .cornerRadius(10)
            .shadow(color: .gray, radius: 8)
            .padding()
    }
}

extension View {
    func customButton(bgColor:Color = .blue, height: CGFloat = 45, font: Font = .subheadline) -> some View {
        modifier(ButtonModifier(backgroundColor: bgColor, height: height, font: font))
    }
}

struct CustomButtonView: View {
    var body: some View {
        VStack {
            Text("Submit")
                .customButton(bgColor: .blue, height: 45, font: Font.system(size: 18, weight: .bold))
            Text("Submit")
                .customButton(bgColor: .orange, height: 35)
        }
    }
}

#Preview {
    CustomButtonView()
}

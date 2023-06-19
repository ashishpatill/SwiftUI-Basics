//
//  CustomButtonStyle.swift
//  BackgroundsAndOverlays
//
//  Created by Ashish Pisey on 19/06/23.
//

import SwiftUI

struct ButtonClickStyle : ButtonStyle {
    var bgColor: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.7 : 1.0)
            .background(configuration.isPressed ? .gray : bgColor)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
}

struct CustomButtonStyle: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Login")
                .font(.system(size: 18, weight: .bold))
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .foregroundColor(.white)
                .shadow(color: Color.blue.opacity(0.7), radius: 8)
                
        })
        .buttonStyle(ButtonClickStyle(bgColor: .blue))
        .padding(.horizontal, 20)
    }
}

#Preview {
    CustomButtonStyle()
}

//
//  CustomModifier.swift
//  ViewsAndModifiers
//
//  Created by Ashish Pisey on 18/07/22.
//

import SwiftUI

struct SubmitButton: ViewModifier {
    var title: String
    var action: () -> Void
    
    func body(content: Content) -> some View {
        content
        Button(title, action: action)
            .frame(width: 100, height: 35)
            .font(.title2)
            .foregroundColor(.white)
            .padding(10)
            .background(LinearGradient(colors: [.purple, .pink], startPoint: .leading, endPoint: .trailing))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

extension View {
    func submitButton(with text: String, action: @escaping () -> Void) -> some View {
        modifier(SubmitButton(title: text, action: action))
    }
}

struct ViewWithButton: View {
    var body: some View {
        Color.blue
            .submitButton(with: "Submit", action: buttonTapped)
    }
    
    func buttonTapped() {
        print("button tapped")
    }
}

struct CustomModifier_Previews: PreviewProvider {
    static var previews: some View {
        ViewWithButton()
    }
}

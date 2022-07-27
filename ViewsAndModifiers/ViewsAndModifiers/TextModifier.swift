//
//  TextModifier.swift
//  ViewsAndModifiers
//
//  Created by Ashish Pisey on 27/07/22.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        content
        Text(text)
            .frame(width: 100, height: 30)
            .font(.footnote)
            .foregroundColor(.white)
            .padding(5)
            .background(.black)
            .cornerRadius(8)
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct SampleView: View {
    var body: some View {
        Color.blue
            .watermarked(with: "by Ashish Pisey")
    }
}

struct TextModifier_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}

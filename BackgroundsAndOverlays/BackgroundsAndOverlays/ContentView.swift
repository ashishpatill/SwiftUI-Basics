//
//  ContentView.swift
//  BackgroundsAndOverlays
//
//  Created by Ashish Pisey on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    let color2 = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    let gradient = LinearGradient(colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill (
                        gradient
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: color2, radius: 8)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("7")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(color2), radius: 4)
                        , alignment: .bottomTrailing)
            )
            
    }
}

#Preview {
    ContentView()
}

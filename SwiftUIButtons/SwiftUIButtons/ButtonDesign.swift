//
//  ButtonDesign.swift
//  SwiftUIButtons
//
//  Created by Ashish Pisey on 12/07/22.
//

import SwiftUI

struct ButtonDesign: View {
    var body: some View {
        VStack(spacing: 15) {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            Button {
                print("button with image pressed")
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            Button { } label: {
                Label("Map", systemImage: "globe")
                    .font(.title2)
                    .fontWeight(.medium)
            }
            Button(action: {
                print("custom button with image pressed")
            }) {
                Image(systemName: "trash")
                    .padding(10)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .font(.title3)
                    .clipShape(Circle())
            }
            Button(action: {
                print("custom button with text, image and shadow pressed")
            }) {
                HStack {
                    Text("Remove")
                    Image(systemName: "trash")
                }
                .padding(15)
                .font(.title3)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(27.5)
            }
            .shadow(color: .secondary, radius: 3)
            
            Button(action: {
                print("Button with border pressed")
            }) {
                Text("Done")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(.purple)
                    .foregroundColor(.white)
                    .padding(7)
                    .border(.purple, width: 3)
            }
            
            let gradient = LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Button(action: {
                print("Button with gradient pressed")
            }) {
                Text("Submit")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(15)
                    .background(gradient)
                    .cornerRadius(27.5)
                    .foregroundColor(.white)
                    .padding(7)
                    .overlay(
                        RoundedRectangle(cornerRadius: 35)
                            .stroke(gradient, lineWidth: 2)
                    )
            }
        }
    }
}

struct ButtonDesign_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDesign()
    }
}

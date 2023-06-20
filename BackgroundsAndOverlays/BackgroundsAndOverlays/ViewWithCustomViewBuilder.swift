//
//  CustomViewBuilder.swift
//  BackgroundsAndOverlays
//
//  Created by Ashish Pisey on 20/06/23.
//

import SwiftUI

struct ViewWithCustomViewBuilder: View {
    var body: some View {
        CustomViewBuilder {
            Text("This is a custom alert")
        }
    }
}

struct CustomViewBuilder <Content: View>: View {
    var content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            Image(systemName: "xmark.octagon.fill")
                .resizable()
                .frame(width: 65, height: 65)
                .foregroundColor(Color(#colorLiteral(red:1, green: 0, blue:0, alpha:0)))
                .padding()
            content
                .padding()
            RoundedRectangle(cornerRadius: 5.0)
                .frame(height: 1)
                .padding(.horizontal,10)
            HStack{
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.red)
                })
                Spacer()
                RoundedRectangle(cornerRadius: 1.0)
                    .frame(width: 1, height: 25)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Confirm")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.blue)
                })
                Spacer()
            }
            .padding(.bottom, 13)
        }
        .background(
            Color(.lightGray)
                .cornerRadius(8)
                .opacity(0.8)
        )
        .padding()
    }
}

#Preview {
    ViewWithCustomViewBuilder()
}

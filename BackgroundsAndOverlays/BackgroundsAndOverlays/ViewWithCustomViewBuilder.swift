//
//  CustomViewBuilder.swift
//  BackgroundsAndOverlays
//
//  Created by Ashish Pisey on 20/06/23.
//

import SwiftUI

struct ViewWithCustomViewBuilder: View {
    var body: some View {
        VStack {
            CustomAlertView(type: .onlyTitle, title: Text("This is a custom alert"))
            CustomAlertView(type: .withSubtitle, title: Text("This is a custom alert with subtitle"), subtitle: Text("This is subtitle"))
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
                .foregroundColor(.pink)
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
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.red)
                        .padding(.horizontal, 50)
                })
                .contentShape(Rectangle())
                Spacer()
                RoundedRectangle(cornerRadius: 1.0)
                    .frame(width: 1, height: 35)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Confirm")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.blue)
                        .padding(.horizontal, 50)
                })
                .contentShape(Rectangle())
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

struct CustomAlertView: View {
    enum alertType {
        case onlyTitle, withSubtitle
    }
    
    let type: alertType
    var title: Text
    var subtitle: Text?
    
    var body: some View {
        alertContainer
    }
    
    @ViewBuilder private var alertContainer: some View {
        switch type {
        case .onlyTitle:
            CustomViewBuilder {
                title
            }
        case .withSubtitle:
            CustomViewBuilder {
                title
                subtitle
            }
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    ViewWithCustomViewBuilder()
}

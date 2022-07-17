//
//  ContentView.swift
//  SwiftUI Navigation
//
//  Created by Ashish Pisey on 15/06/22.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        NavigationView {
            NavigationLink("Go to next Page") {
                SecondPage()
            }
            .navigationTitle("Home Page")
            .navigationBarTitleDisplayMode(.inline)
        }
        
         /*VStack {
            Text("This is a wide text element")
                .font(.body)
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(true)
            
            Text("This is a wide text element")
                .font(.body)
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(false)
        }*/
        
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}

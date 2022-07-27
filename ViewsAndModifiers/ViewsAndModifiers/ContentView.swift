//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ashish Pisey on 16/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Square Button") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.purple)
            .foregroundStyle(.white)
            
            Text("Text")
                .padding()
                .background(.pink)
                .padding()
                .background(.orange)
                .padding()
                .background(.yellow)
                .padding()
                .background(.cyan)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

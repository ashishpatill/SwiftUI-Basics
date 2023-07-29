//
//  ContentView.swift
//  SwiftUI State Basics
//
//  Created by Ashish Pisey on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 0.5
    @State private var red = 0.3
    @State private var green = 0.6
    @State private var blue = 0.7
    
    var body: some View {
        VStack {
            Color(red: red, green: green, blue: blue)
                .frame(height: 400)
                .border(.black, width: 2.0)
                .cornerRadius(8.0)
            Text("\(red)")
            Slider(value: $red)
                .accentColor(.red)
            Slider(value: $green)
                .accentColor(.green)
            Slider(value: $blue)
                .accentColor(.blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

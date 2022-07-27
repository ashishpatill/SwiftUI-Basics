//
//  ContentView.swift
//  SwiftUI State Basics
//
//  Created by Ashish Pisey on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 0.5
    var body: some View {
        VStack {
            Text("\(sliderValue)")
            Slider(value: $sliderValue)
                .accentColor(.orange)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

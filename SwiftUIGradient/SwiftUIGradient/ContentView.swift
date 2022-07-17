//
//  ContentView.swift
//  SwiftUIGradient
//
//  Created by Ashish Pisey on 12/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("hello")
//        LinearGradient(gradient: Gradient(stops: [ Gradient.Stop(color: .white, location: 0.25),
//            Gradient.Stop(color:.black, location: 0.65)
//        ]), startPoint: .top, endPoint: .bottom)
    }
}

struct AngularGradient_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct RadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
    }
}

struct LinearGradientColor_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom)
    }
}


struct LinearGradientStop_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient(gradient: Gradient(stops: [ Gradient.Stop(color: .white, location: 0.25),
            Gradient.Stop(color:.black, location: 0.65)
        ]), startPoint: .top, endPoint: .bottom)
    }
}

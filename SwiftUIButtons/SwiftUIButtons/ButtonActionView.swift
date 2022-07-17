//
//  ContentView.swift
//  SwiftUIButtons
//
//  Created by Ashish Pisey on 12/07/22.
//

import SwiftUI

struct ButtonActionView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Button("Button with closure") {
                    print("closure executed")
                }
                Button("Button with action", action: doSomething)
                NavigationLink("Custom designed buttons") {
                    ButtonDesign()
                }
            }
        }
    }
    
    func doSomething() {
        print("action executed")
        
    }
}

struct ButtonActionView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonActionView()
    }
}

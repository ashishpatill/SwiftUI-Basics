//
//  ContentView.swift
//  SwiftUIAlert
//
//  Created by Ashish Pisey on 13/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertVisible = false
    var body: some View {
        Button("Show Alert") {
            isAlertVisible = true
        }.alert("Do you want to delete?", isPresented: $isAlertVisible) {
            Button("Delete", role: .destructive) {
                print("Delete pressed")
            }
//            Button("Hide", role: .none) {
//                print("Hide Pressed")
//            }
            Button("Cancel", role: .cancel) {
                print("Alert cancelled")
            }
        } message: {
            Text("Please make sure as you cant undo this action")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

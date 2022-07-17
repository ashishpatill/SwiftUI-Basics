//
//  SecondPage.swift
//  SwiftUI Navigation
//
//  Created by Ashish Pisey on 19/06/22.
//

import SwiftUI

struct SecondPage: View {
    var body: some View {
        NavigationView {
            Text("Second View content")
        }
        .navigationTitle("Second View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

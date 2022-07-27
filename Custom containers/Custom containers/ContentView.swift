//
//  ContentView.swift
//  Custom containers
//
//  Created by Ashish Pisey on 27/07/22.
//

import SwiftUI

struct GridStack<Content:View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }

                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            Text("\(row)\(col)")
                .frame(width: 30, height: 30)
                .overlay(
                    Circle()
                        .stroke(.pink, lineWidth: 1.4)
                )
                .padding(4)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Mask.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 18/09/23.
//

import SwiftUI

struct Maskview: View {
    
    @State var rating: Int = 0
    
    var body: some View {
        ZStack {
            VStack {
                Button("Rate") {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        if rating < 5 {
                            rating = rating + 1
                        } else if rating == 5 {
                            rating = 0
                        } else {
                            rating = rating - 1
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                .font(.title)
                .padding(.vertical, 50)
                StarsView(rating:rating)
            }
        }
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        Maskview()
    }
}

struct StarsView: View {
    var rating = 0
    
    var body: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(rating >= index ? .yellow : .gray )
            }
        }
    }
}

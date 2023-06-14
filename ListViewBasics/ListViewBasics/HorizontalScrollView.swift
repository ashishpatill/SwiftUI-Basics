//
//  HorizonatalScrollView.swift
//  ListViewBasics
//
//  Created by Ashish Pisey on 01/02/23.
//

import SwiftUI

struct HorizontalScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(0..<10, id: \.self) { _ in
                    CustomCell()
                        .padding(.horizontal, 10)
                }
            }
            .background(.yellow)
        }
    }
}

struct HorizonatalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}

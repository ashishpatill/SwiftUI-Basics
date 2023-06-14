//
//  HorizonatalScrollView.swift
//  ListViewBasics
//
//  Created by Ashish Pisey on 01/02/23.
//

import SwiftUI

struct HorizontalScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<10, id: \.self) { _ in
                    CustomCell()
                        .shadow(radius: 5)
                }
            }
            .background(.clear)
        }
    }
}

struct HorizonatalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}

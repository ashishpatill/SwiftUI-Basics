//
//  ListView.swift
//  ListViewBasics
//
//  Created by Ashish Pisey on 01/02/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ForEach(0..<10) { _ in
                CustomCell()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

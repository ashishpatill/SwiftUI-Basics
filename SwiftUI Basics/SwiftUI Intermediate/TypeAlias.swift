//
//  TypeAlias.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 06/10/23.
//

import SwiftUI

struct MovieModel {
    let title: String
    let director: String
    let count: Int
}

typealias TVModel = MovieModel

struct TypeAliasView: View {
    @State var item: TVModel = TVModel(title: "Ramayan", director: "Ramanand Sagar", count: 10)
    
    var body: some View {
        VStack {
            Text(item.title)
            Text(item.director)
            Text("\(item.count)")
        }
    }
}

struct TypeAliasPreview : PreviewProvider {
    static var previews: some View {
        TypeAliasView()
    }
}

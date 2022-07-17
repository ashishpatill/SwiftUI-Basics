//
//  Views as properties.swift
//  ViewsAndModifiers
//
//  Created by Ashish Pisey on 17/07/22.
//

import SwiftUI

struct Views_as_properties: View {
    let motto1 = Text("Text 1")
    let motto2 = Text("Text 2")
        
    var body: some View {
        VStack {
            motto1
            motto2
        }
    }
}

struct Views_as_properties_Previews: PreviewProvider {
    static var previews: some View {
        Views_as_properties()
    }
}

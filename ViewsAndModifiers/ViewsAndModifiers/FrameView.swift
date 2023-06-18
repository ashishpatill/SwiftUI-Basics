//
//  FrameView.swift
//  ViewsAndModifiers
//
//  Created by Ashish Pisey on 21/05/23.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text("Hello iOS Mastery")
            .background(.red)
            .frame(height: 100, alignment: .leading)
            .background(.cyan)
            .frame(width: 200, alignment: .center)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(.yellow)
            .frame(height: 400)
            .background(.green)
            .cornerRadius(20)
            .frame(maxHeight: .infinity, alignment:.top)
            .padding([.top, .leading, .trailing], 30)
            .background(.orange)
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}

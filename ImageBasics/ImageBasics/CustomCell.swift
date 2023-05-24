//
//  CustomImageView.swift
//  ImageBasics
//
//  Created by Ashish Pisey on 01/02/23.
//

import SwiftUI

struct CustomCell: View {
    let cornerRadius = 8.0
    var body: some View {
        //GeometryReader { geo in
            VStack {
                Image("swift")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //.scaledToFit()
                //.border(.orange, width: 2)
                    .cornerRadius(cornerRadius)
                //.clipShape(Circle())
                    .shadow(radius: 5)
                Text("This is Swift!")
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width * 0.95)
            //.frame(width: geo.size.width)
            .background(.white)
            .cornerRadius(cornerRadius)
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.black, lineWidth: 0.5)
            }
        //}
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell()
    }
}

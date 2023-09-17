//
//  GeometryReader.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 17/09/23.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        //geometryOrientationView()
        geometryScrollView
    }
    
    /// Orientation Remains same in landscape and portrate mode
    var geometryOrientationView : some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: geometry.size.width * 0.67)
                Rectangle()
                    .fill(Color.blue)
            }
            .ignoresSafeArea()
        }
    }
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
    
    var geometryScrollView: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo:geometry) * 40),
                                 axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                }
            }
        })
    }
}

#Preview {
    GeometryReaderView()
}

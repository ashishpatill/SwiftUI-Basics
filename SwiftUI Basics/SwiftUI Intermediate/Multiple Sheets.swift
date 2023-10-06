//
//  Multiple Sheets.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 18/09/23.
//

import SwiftUI

struct Multiple_Sheets: View {
    
    @State private var selectedModel: Model?
    
    var body: some View {
        ScrollView {
            VStack(spacing:20) {
                ForEach(1..<21) { index in
                    Button("Button \(index)") {
                        selectedModel = Model(title: "\(index)")
                    }
                }
            }
            
            // Note we are using a single .sheet(item:) on VStack
            // item enables us to pass the multiple variations of data to single sheet
            // we could also make the selectedModel in NextScreen a binding variable but it will need multiple .sheet(isPresented:)
            .sheet(item: $selectedModel) { model in
                NextScreen(selectedModel: model)
            }
        }
    }
}

struct NextScreen : View {
    let selectedModel : Model
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct Model:Identifiable {
    let id = UUID().uuidString
    let title: String
}

#Preview {
    Multiple_Sheets()
}

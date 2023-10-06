//
//  EscapingClosures.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 06/10/23.
//

import SwiftUI

struct EscapingClosures: View {
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

class EscapingViewModel: ObservableObject {
    @Published  var text: String = "Hello"
    
    func getData() {
        /*
        let data = downloadData()
        text = data
         */
        
        /*
        downloadData2 { returnedData in
            text = returnedData
        }
        */
        
        /*
        downloadData3 { [weak self] returnedData in
            self?.text = returnedData
        }
        */
        
        downloadData4 { [weak self] returnedData in
            self?.text = returnedData.title
        }
        
        print("returned data: \(text)")
    }
    
    func downloadData() -> String {
        return "New Data"
    }
    
    func downloadData2(completionHandler: (_ data: String) -> Void) {
        completionHandler("New data!")
    }
    
    func downloadData3(completionHandler: @escaping (_ data: String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completionHandler("New data!")
        }
    }
    
    func downloadData4(completionHandler: @escaping completion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completionHandler(DownloadResult(title: "some title"))
        }
    }
}

struct DownloadResult {
    let title: String
}

typealias completion = (DownloadResult) -> ()

#Preview {
    EscapingClosures()
}

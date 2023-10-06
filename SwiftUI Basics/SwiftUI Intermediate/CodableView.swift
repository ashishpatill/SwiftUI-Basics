//
//  CodableView.swift
//  SwiftUI Basics
//
//  Created by Ashish Pisey on 06/10/23.
//

import SwiftUI

struct CodableView: View {
    @StateObject var vm = CodableViewModel()
    
    var body: some View {
        if let customers = vm.customers {
            VStack {
                ForEach(customers) { customer in
                    HStack(spacing: 20) {
                        Text(customer.id)
                        Text(customer.name)
                        Text("points: \(customer.points)")
                        Text(customer.isPremium.description)
                    }
                }
            }
        }
        
    }
}

struct CustomerModel: Identifiable, Codable {
    let id:String
    let name: String
    let points: Int
    let isPremium: Bool
    
    /*
    init(id: String, name:String, points: Int, isPremium: Bool) {
        self.id = id
        self.name = name
        self.points = points
        self.isPremium = isPremium
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case points
        case isPremium
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.points = try container.decode(Int.self, forKey: .points)
        self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.points, forKey: .points)
        try container.encode(self.isPremium, forKey: .isPremium)
    }
     */
}

typealias CustomerArray = [CustomerModel]

class CodableViewModel: ObservableObject {
    
    @Published var customers:CustomerArray?
    
    init() {
        getData()
    }
    
    func getData() {
        guard let jsonData = getJsonData() else { return }
        print("JSON bytes:")
        print(jsonData)
        let jsonString = String(data:jsonData, encoding: .utf8)
        print("JSON string:")
        print(jsonString)
        
        // Manual decoding json object
        /*
        if let localData = try? JSONSerialization.jsonObject(with: jsonData),
           let dictionary = localData as? [String:Any],
           let id = dictionary["id"] as? String,
           let name = dictionary["name"] as? String,
           let points = dictionary["points"] as? Int,
           let isPremium = dictionary["isPremium"] as? Bool {
            print("JSON object")
            print(dictionary)
            
            let newCustomer = CustomerModel(id: id, name: name, points: points, isPremium: isPremium)
            customer = newCustomer
        }
         */
        
        // Using 'try' for decoding json data with Decodable
        /*
        do {
            self.customer = try JSONDecoder().decode(CustomerModel.self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
        */
        
        // Using 'try?' for decoding json data with Decodable
        self.customers = try? JSONDecoder().decode(CustomerArray.self, from: jsonData)
        
    }
    
    func getJsonData() -> Data? {
        /*
        let jsonArray: [[String:Any]] = [
            [
                "id" : "12345",
                "name" : "Joe",
                "points": 5,
                "isPremium" : true
            ],
            [
                "id" : "678",
                "name" : "Ashish",
                "points": 7,
                "isPremium" : false
            ]
        ]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: jsonArray, options: [])
         return jsonData

        */
        let customers = [
            CustomerModel(id: "111", name: "Emily", points: 100, isPremium: false),
            CustomerModel(id: "112", name: "Joe", points: 130, isPremium: true)
        ]
        let customersData = try? JSONEncoder().encode(customers)
        return customersData
    }
    
}

#Preview {
    CodableView()
}

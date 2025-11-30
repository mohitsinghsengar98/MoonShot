//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct User :Codable {
    let name: String
    let address : Address
}

struct Address : Codable{
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        Button("decode JSON"){
            let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                        "street": "555, Taylor Swift Avanue",
                        "city": "NashVille"
                    }
                }
                """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print("Name: \(user.name)")
                print("Street: \(user.address.street)")
                print("City: \(user.address.city)")
            }
        }
    }
}

#Preview {
    ContentView()
}

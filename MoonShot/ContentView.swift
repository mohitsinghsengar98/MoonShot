//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Tap me"){
                Text("Detail View")
            }
                .navigationTitle("SwiftUI ")
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct ContentView: View {
    let astronouts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronouts.count))
    }
}

#Preview {
    ContentView()
}

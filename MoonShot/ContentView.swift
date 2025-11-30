//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct ContentView: View {
    let astronouts : [String:Astronout] = Bundle.main.decode("astronauts.json")
    let mission : [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text(String(astronouts.count))
        Text(String(mission.count))
    }
}

#Preview {
    ContentView()
}

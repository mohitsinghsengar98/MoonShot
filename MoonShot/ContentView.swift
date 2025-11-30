//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        Image(.aldrin)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal){size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}

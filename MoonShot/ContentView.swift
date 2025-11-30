//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct ContentView: View {
    let layout = [GridItem(.adaptive(minimum: 80, maximum: 120))]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns:layout){
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

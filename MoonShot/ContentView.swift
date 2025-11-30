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
            Spacer()
            NavigationLink("Tap me"){
                Text("Detail View")
            }
            Spacer()
            NavigationLink{
                Text("Detail View")
            } label:{
                VStack{
                    Text("Add new screen")
                    Text("Custom Label")
                    Image(systemName: "face.smiling")
                }.font(.largeTitle)
                
            }
            .navigationTitle("SwiftUI ")
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

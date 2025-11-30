//
//  AstronautView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronout
    
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaut.id).resizable().scaledToFit().cornerRadius(20).padding()
                Text(astronaut.description).padding()
            }
            
        }.background(.darkBackground)
            .navigationTitle(astronaut.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts : [String:Astronout] = Bundle.main.decode("astronauts.json")
    AstronautView(astronaut: astronauts["armstrong"]!)
        .preferredColorScheme(.dark)
}

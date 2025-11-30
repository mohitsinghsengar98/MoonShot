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
    
    let columns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(mission){ mission in
                        NavigationLink{
                            MissionView(mission: mission, astronauts: astronouts)
                        }label:{
                            VStack{
                                Image(mission.image).resizable().scaledToFit().frame(width: 100,height: 100).padding()
                                VStack{
                                    Text(mission.displayName).font(.headline)
                                        .foregroundStyle(.white)
                                    Text(mission.formattedLaunchDate).font(.caption).foregroundStyle(.white.opacity(0.5))
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius:10))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke( .lightBackground))
                        }
                    }
                }.padding([.horizontal,.bottom])
            }.navigationTitle("Moonshot")
                .background(.darkBackground)
                .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}

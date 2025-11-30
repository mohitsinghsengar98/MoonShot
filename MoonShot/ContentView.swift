//
//  ContentView.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import SwiftUI

struct CustomText:View {
    let text : String
    
    var body: some View {
        Text(text)
    }
    
    init(text:String){
        print("creating new custom text")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing:10){ // lazy will have more space than regular HStack or VStack and it will load the view that is need to present.
                ForEach(0..<100){
                    CustomText(text:"Item \($0)").font(.title)
                }
            }.frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}

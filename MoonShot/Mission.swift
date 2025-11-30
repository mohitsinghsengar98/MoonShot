//
//  Mission.swift
//  MoonShot
//
//  Created by Mohit Sengar on 30/11/25.
//

import Foundation

struct Mission:Codable,Identifiable{
    struct Crew:Codable{
        let name:String
        let role:String
    }
    
    let id:Int
    let launchDate:String?
    let crew:[Crew]
    let description:String
}



//
//  Mission.swift
//  Moonshot
//
//  Created by /fam on 1/29/21.
//

import Foundation

struct CrewRole:Codable{
    
    let name:String
    let role:String
}
struct Mission:Codable,Identifiable{
    let id: Int
    let launchDate:String?
    let crew: [CrewRole]
    let description: String
    
}

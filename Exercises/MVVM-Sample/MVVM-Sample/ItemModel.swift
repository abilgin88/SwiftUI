//
//  ItemModel.swift
//  MVVM-Sample
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import Foundation

// 1: 
struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exempleItem = Item(name: "Xbox", description: "Sample description")
}

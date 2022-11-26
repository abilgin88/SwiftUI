//
//  Content-ViewModel.swift
//  MVVM-Sample
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import Foundation
import SwiftUI

// 2:

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
       
        func increment() {
            counter += 1
        }
        
        func addItem() {
            let randomItems = ["Playstation", "Xbox", "Nintendo Wii", "Gameboy"]
            let item = randomItems.randomElement()!
            let newItem = Item(name: item, description: "item: \(itemList.count + 1)")
            
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
    }
}

//
//  viewmodeling.swift
//  MVVM
//
//  Created by Abdullah Bilgin on 12/2/22.
//

import Foundation

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var sonuc: Int = 0
        @Published var ilk: number = number(num1: 3, num2: 4, who: "Abdullah")
        
        func sum() -> Int {
            return  ilk.num1 + ilk.num2
        }
    }
}

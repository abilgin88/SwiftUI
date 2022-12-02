//
//  ContentView.swift
//  MVVM
//
//  Created by Abdullah Bilgin on 12/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Text("\(vm.ilk.num1)")
            Text("\(vm.ilk.num2)")
            Text("\(vm.ilk.who)")
            Text("\(vm.sum())")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

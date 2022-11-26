//
//  ContentView.swift
//  MVVM-Sample
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import SwiftUI

struct ContentView: View {
    
    // 3:
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle Switch", isOn: $vm.isTurnedOn)
                .padding()
            HStack {
                Button("increment") {
                    vm.increment()
                }
                Text("\(vm.counter)")
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
            }
            
            List(vm.itemList) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            Button("Add item") {
                vm.addItem()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

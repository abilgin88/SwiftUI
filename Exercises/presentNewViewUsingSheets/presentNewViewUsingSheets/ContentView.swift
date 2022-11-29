//
//  ContentView.swift
//  presentNewViewUsingSheets
//
//  Created by Abdullah Bilgin on 11/28/22.
//
/// *** Unlike navigation links, sheets don’t require a navigation view to work. ***


import SwiftUI

// 1: creates a simple detail view,
struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Text("This is a text")
                .padding()
            Button("Press to dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
            .background(.cyan)
        }
    }
}

struct ContentView: View {
    
// 2: Creating variables
    @State private var showingSheet = false
    @State private var test = true
    
    var body: some View {
        Text("")
//        ZStack {
//            if test {
//                Color.gray.ignoresSafeArea()
//
//            }
//            Button("Show Sheet") {
//               showingSheet.toggle() // means change the showingSheet from false to true
//                test.toggle()
//            }
//            .sheet(isPresented: $showingSheet) { // open the SheetView() when tap the button
//                SheetView()
//            }
//
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

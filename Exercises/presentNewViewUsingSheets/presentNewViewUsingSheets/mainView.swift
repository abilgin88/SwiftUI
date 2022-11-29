//
//  mainView.swift
//  presentNewViewUsingSheets
//
//  Created by Abdullah Bilgin on 11/29/22.
//

import SwiftUI

struct mainView: View {
    @State private var isPresented = false
    @State private var showingSheet = false
    @State private var test = true

    var body: some View {
        VStack {
            Button("present!") {
                isPresented.toggle()
            }
            .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
            
            Button("Show Sheet") {
               showingSheet.toggle() // means change the showingSheet from false to true
                test.toggle()
            }
            .sheet(isPresented: $showingSheet) { // open the SheetView() when tap the button
                SheetView()
            }
        }
           
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

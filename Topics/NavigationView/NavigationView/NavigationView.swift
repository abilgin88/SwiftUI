//
//  NavigationView.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/25/22.
//

import SwiftUI

struct navigationViewTest: View {
    var body: some View {
        NavigationView {
            Text("Hello, World")
                .navigationTitle("Navigation") // navigationTitle() modifier belongs to the text view, not to the navigation view
                .navigationBarTitleDisplayMode(.inline)
        }
     }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        navigationViewTest()
    }
}

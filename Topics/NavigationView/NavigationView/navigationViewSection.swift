//
//  navigationViewSection.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/27/22.
//

import SwiftUI

struct navigationViewSection: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, World!")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct navigationViewSection_Previews: PreviewProvider {
    static var previews: some View {
        navigationViewSection()
    }
}

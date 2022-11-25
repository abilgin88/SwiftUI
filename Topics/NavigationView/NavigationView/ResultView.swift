//
//  ResultView.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/25/22.
//

import SwiftUI

struct ResultView: View {
    var choice: String
    
    var body: some View {
        Text("You chose \(choice)")
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(choice: "")
    }
}

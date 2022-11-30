//
//  ContactsView.swift
//  NavBarTabView
//
//  Created by Abdullah Bilgin on 11/30/22.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        // 2: Copy from CallsView "Step-1"
        ZStack {
            Color.blue // set different Color
            
            Image(systemName: "person.2.fill") // set different image
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}

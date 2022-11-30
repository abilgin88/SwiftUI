//
//  CallsView.swift
//  NavBarTabView
//
//  Created by Abdullah Bilgin on 11/30/22.
//

import SwiftUI

struct CallsView: View {
    var body: some View {
        
        // 1: set a ZStack
        ZStack {
            // Set background color
            Color.red
            
            // set an image
            Image(systemName: "phone.fill")
            // modifying the image
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}

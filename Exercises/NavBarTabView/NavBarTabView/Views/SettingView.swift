//
//  SettingView.swift
//  NavBarTabView
//
//  Created by Abdullah Bilgin on 11/30/22.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        // 3: Copy from CallsView "Step-1"
        ZStack {
            Color.green // set different color
            
            Image(systemName: "slider.horizontal.3") // set different image
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

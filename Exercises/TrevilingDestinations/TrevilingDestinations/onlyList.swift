//
//  onlyList.swift
//  TrevilingDestinations
//
//  Created by Abdullah Bilgin on 12/3/22.
//

import SwiftUI

struct onlyList: View {
    let countries = countryList

    var body: some View {
        VStack {
            NavigationView{
                List {
                    ForEach(countries, id: \.self) { country in
                        HStack {
                            Image(systemName: "house.circle.fill")
                            Text("\(country)")
                        }
                        
                    }
                }
            }
        }
        .padding()
    }
}

struct onlyList_Previews: PreviewProvider {
    static var previews: some View {
        onlyList()
    }
}

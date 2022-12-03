//
//  ListWithNavigation.swift
//  TrevilingDestinations
//
//  Created by Abdullah Bilgin on 12/3/22.
//

import SwiftUI

struct ListWithNavigation: View {
    // 2: Creating variables to reach countries from countries files
    let countries = countryList
    
    var body: some View {
        VStack {
            // 3: creating navigation view
            NavigationView{
                // 4: Creating list
                List {
                    ForEach(countries, id: \.self) { country in
                        // send data to new screen
                        NavigationLink(destination: Text(country)) {
                            Image(systemName: "airplane")
                            Text(country)
                        }
                        .padding()
                    }
                    .navigationTitle("Destinations")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

struct ListWithNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ListWithNavigation()
    }
}

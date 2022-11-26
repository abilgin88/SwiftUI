//
//  TestProjectApp.swift
//  SimpleMVVM
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import SwiftUI

@main

struct TestProjectApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
            }
        }
    }
}


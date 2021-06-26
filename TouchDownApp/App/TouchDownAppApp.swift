//
//  TouchDownAppApp.swift
//  TouchDownApp
//
//  Created by Ghoost on 5/22/21.
//

import SwiftUI

@main
struct TouchDownAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

//
//  TouchDownShopApp.swift
//  TouchDownShop
//
//  Created by Nicholas on 20/06/2022.
//

import SwiftUI

@main
struct TouchDownShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

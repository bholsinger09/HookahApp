//
//  HookahShopApp.swift
//  HookahShop
//
//  Created by Ben Holsinger on 3/19/23.
//

import SwiftUI

@main
struct HookahShopApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .background(Color.black)
                .edgesIgnoringSafeArea(.all)
        }
    }
}



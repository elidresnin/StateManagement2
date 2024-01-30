//
//  StateManagementApp.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/27/23.
//

import SwiftUI

@main
struct StateManagementApp: App {
    
    @StateObject var store: Store = Store()
    @StateObject var cart: Cart = Cart()
    @StateObject var user: User = User()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .environmentObject(cart)
                .environmentObject(user)
        }
    }
}

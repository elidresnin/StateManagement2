//
//  StateManagementApp.swift
//  StateManagement
//
//  Created by Swope, Thomas on 11/27/23.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct StateManagementApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
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

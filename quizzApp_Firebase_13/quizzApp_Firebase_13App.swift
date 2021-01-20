//
//  quizzApp_Firebase_13App.swift
//  quizzApp_Firebase_13
//
//  Created by emm on 18/01/2021.
//

import SwiftUI
import Firebase

@main
struct quizzApp_Firebase_13App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


// Initializing firebase...
class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}

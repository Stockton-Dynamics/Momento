//
//  MomentoApp.swift
//  Momento
//
//  Created by Yojairo Morales on 4/2/24.
//

import SwiftUI
import Firebase

@main
struct MomentoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var authService = AuthService()
    
    
    var body: some Scene {
        WindowGroup {
            if authService.signedIn {
                TabView {
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person")
                        }
                }
            } else {
                LoginView()
            }
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
            
            return true
        }
    }
}

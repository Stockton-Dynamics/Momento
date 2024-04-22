//
//  ProfileView.swift
//  Momento
//
//  Created by Yojairo Morales on 4/2/24.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    @StateObject var authService = AuthService()
    
    var body: some View {
        NavigationStack {
            VStack {
            }
            .toolbar {
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(systemName: "gearshape")
                        .imageScale(.large)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .navigationTitle("Profile")
        }
    }
    
    #Preview {
        LoginView()
    }
}

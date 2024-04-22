//
//  SettingsView.swift
//  Momento
//
//  Created by Yojairo Morales on 4/2/24.
//

import SwiftUI
import Firebase

struct SettingsView: View {
    @StateObject var authService = AuthService()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button(action: { authService.signOut()}) {
                Text("Sign Out")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
        }
        .padding(30)
    }
    
}

#Preview {
    LoginView()
}

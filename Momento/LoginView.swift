//
//  LoginView.swift
//  Momento
//
//  Created by Yojairo Morales on 4/2/24.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @StateObject var authService = AuthService()
    
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Love your best moments.")
                .font(.largeTitle)
                .padding(.bottom, 60)
            
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .padding()
                 .background(Color.white)
                 .cornerRadius(8)
                 .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 3)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 3)
            
            Button(action: { authService.signIn(email: email, password: password) }) {
                Text("Sign In")
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

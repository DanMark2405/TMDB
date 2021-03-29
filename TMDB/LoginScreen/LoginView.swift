//
//  LoginView.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var state:LoginState
    
    
    var body: some View {
        VStack(alignment:.center){
            Image("logo-1")
                .resizable()
                .frame(height:300)
                .padding()
            VStack(alignment:.leading){
            Text("Login")
                TextField("", text: $state.Login)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:300)
            Text("Password")
                SecureField("", text: $state.Password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width:300)
            }
            
               
            Button("Sign In",action:{ self.state.controller?.GoToMain()})
                    .disabled( state.Login.count < 4 || state.Password.count < 8)
            Spacer()
                
            
        }
}
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(state: LoginState())
    }
}

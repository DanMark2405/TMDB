//
//  LoginState.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import Foundation
final class LoginState:ObservableObject{
    @Published var Login = ""
    @Published var Password = ""
    var controller: LoginViewController?
}

//
//  LoginViewController.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import UIKit
import SwiftUI

class LoginViewController: UIHostingController<LoginView> {
 private let state = LoginState()
   init()
   {
    let view = LoginView(state: state)
    super.init(rootView: view)
    state.controller = self
   }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func GoToMain()
    {
        
        if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
            let controller = UITabBarController()
            let filmsVC = FilmsViewController()
            let searchVC = SearchViewController()
            let filmsNav = UINavigationController(rootViewController: filmsVC)
            let searchNav = UINavigationController(rootViewController: searchVC)
            controller.setViewControllers([filmsNav,searchNav], animated: true)
            
            
            sceneDelegate.window?.rootViewController = controller
            sceneDelegate.window?.makeKeyAndVisible()
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

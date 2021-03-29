//
//  DetailViewController.swift
//  TMDB
//
//  Created by student on 22.03.21.
//


import UIKit
import SwiftUI

class DetailViewController: UIHostingController<DetailView> {
 private let state = DetailState()
    init(film:Film)
   {
    state.film = film
    let view = DetailView(state: state)
    super.init(rootView: view)
    state.controller = self
        self.navigationItem.title = film.name
   }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


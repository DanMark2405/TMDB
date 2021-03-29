//
//  SearchViewController.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import UIKit
import SwiftUI
import Combine

class SearchViewController: UIHostingController<SearchView> {
 private let state = SearchState()
    private var cancellable: AnyCancellable?
   init()
   {
    let view = SearchView(state: state)
    super.init(rootView: view)
    state.controller = self
    self.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName:"magnifyingglass" ), tag: 1)
    self.navigationItem.title = "Search"
    cancellable = NetworkManager.loadData().sink(receiveCompletion: {_ in}, receiveValue: { items in self.state.ListFilms = items })
   }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func goToDetail(film:Film){
        self.navigationController?.pushViewController(DetailViewController(film: film), animated: true)
    }
}


//
//  FilmsViewController.swift
//  TMDB
//
//  Created by student on 22.03.21.
//


import UIKit
import SwiftUI
import Combine

class FilmsViewController: UIHostingController<FilmsView> {
   private var state = FilmsState()
    private var cancellable: AnyCancellable?
    
  
    init() {
       
        let view = FilmsView(state: state)
        super.init(rootView: view)
        state.controller = self
        self.tabBarItem = UITabBarItem(title: "Films", image: UIImage(systemName: "film"), tag: 0)
        self.navigationItem.title = "Films"
   cancellable = NetworkManager.loadData().sink(receiveCompletion: {_ in}, receiveValue: { items in self.state.ListFilms = items })
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    func goToDetail(film: Film) {
            self.navigationController?.pushViewController(DetailViewController(film:film), animated: true)
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
    


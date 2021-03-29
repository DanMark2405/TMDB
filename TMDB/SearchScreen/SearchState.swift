//
//  SearchState.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import Foundation
final class SearchState:ObservableObject{
 @Published var textForSearch = ""
    @Published var isEditing = false
    @Published var ListFilms  = [Film]()
    var controller: SearchViewController?
}

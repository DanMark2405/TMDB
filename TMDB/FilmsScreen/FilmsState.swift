//
//  FilmsState.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import Foundation
final class FilmsState:ObservableObject{
    @Published var ListFilms  = [Film]()
    var controller: FilmsViewController?
}

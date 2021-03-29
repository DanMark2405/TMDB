//
//  DeatailState.swift
//  TMDB
//
//  Created by student on 22.03.21.
//

import Foundation
import Foundation
final class DetailState:ObservableObject{
    var controller: DetailViewController?
 @Published var film = Film(name: "", date: "", description: "", imagePath: "")
}

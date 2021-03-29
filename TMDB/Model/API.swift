//
//  API.swift
//  TMDB
//
//  Created by student on 26.03.21.
//

import Foundation

public enum API: String {
    case posterResource = "https://image.tmdb.org/t/p/w500"
    case keyAPI = "761b6e7093d8971a66e67ee1fd231d84"
    case prefixKeyAPI = "?api_key="
    case postfixAPI = "&language=en-US&page=1"
    case dataResource = "https://api.themoviedb.org/3/movie/popular"
}


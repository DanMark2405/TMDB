//
//  StringExtension.swift
//  TMDB
//
//  Created by student on 26.03.21.
//

import Foundation
import SwiftUI

extension String {
    func load() -> UIImage {
        do{
            guard let url = URL(string: self) else{return UIImage()}
            let data:Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
        }
        catch{
            
        }
        return UIImage()
    }
}

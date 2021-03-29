//
//  NetworkManager.swift
//  TMDB
//
//  Created by student on 26.03.21.
//

import Foundation
import Combine

class NetworkManager{
   static func loadData() -> AnyPublisher<[Film], Error> {
        let url = URL(string: API.dataResource.rawValue + API.prefixKeyAPI.rawValue + API.keyAPI.rawValue + API.postfixAPI.rawValue )!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Results.self, decoder:  JSONDecoder())
            .map(\.results)
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }


static func fetchFilms(completionHandler: @escaping ([Film]) -> Void) {
    let url = URL(string: API.dataResource.rawValue + API.prefixKeyAPI.rawValue + API.keyAPI.rawValue + API.postfixAPI.rawValue )!

    let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
      if let error = error {
        print("Error with fetching films: \(error)")
        return
      }
      
      guard let httpResponse = response as? HTTPURLResponse,
            (200...299).contains(httpResponse.statusCode) else {
        print("Error with the response, unexpected status code: \(String(describing: response))")
        return
      }

      if let data = data,
        let filmSummary = try? JSONDecoder().decode(Results.self, from: data) {
        completionHandler(filmSummary.results )
      }
    })
    task.resume()
  }
}

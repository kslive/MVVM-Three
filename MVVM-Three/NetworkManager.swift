//
//  NetworkManager.swift
//  MVVM-Three
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        // Имитация возвращения данных из сети
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}

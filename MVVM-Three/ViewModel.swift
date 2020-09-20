//
//  ViewModel.swift
//  MVVM-Three
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func fetchMovies(completion: @escaping() -> ()) {
        
        networkManager.fetchMovies { [weak self] movies in
            
            self?.movies = movies
            completion()
        }
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        
        guard let movies = movies else { return ""}
        
        return movies[indexPath.row]
    }
}

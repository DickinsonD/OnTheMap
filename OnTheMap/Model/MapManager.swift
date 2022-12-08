//
//  MapManager.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/8/22.
//

import Foundation
struct MapManager {

    func fetchData() {
    
        guard let url = URL(string: "https://onthemap-api.udacity.com/v1/StudentLocation") else {
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                print("error fetching data")
            }
            guard let jsonData = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let decodedData = try decoder.decode(LocationModel.self, from: jsonData)
                print(decodedData)
            } catch {
                print("error decoding data: \(error.localizedDescription)")
            }
        }
        dataTask.resume()
    }
}

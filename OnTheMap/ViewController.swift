//
//  ViewController.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apiEndpoint =
        mapAPI.Endpoint.studentLocationsFromAPi.url //converted to varibale, but can print url in debug pannel
        
        //Request
        let task = URLSession.shared.dataTask(with: apiEndpoint) { data, response, error in
            guard let data = data else {
                return
            }
            //print(data) // data returns bytes of data from endpoint.
            //print(String(data: data, encoding: .utf8)!)
            
            let decoder = JSONDecoder()
            do {
                let response = try decoder.decode(Location.self, from: data)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
    

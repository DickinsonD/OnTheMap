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
        
    //URL Request
        let parseEndpoint = parseAPI.Endpoint.mapInformation.url
        
        let task = URLSession.shared.dataTask(with: parseEndpoint) { (data,
            response, error) in
            guard let data = data else {
                return
            }
            print(data) //Json serialization will convert the returned bytes to data
            
            do {
                let json = try
                JSONSerialization.jsonObject(with: data, options: []) as!
                    [String: Any]
                let url = json["message"] as!
                    String
                print(url)
            } catch {
            print(error)
            }
        }
        task.resume()
    }
}
        
        

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
        
        let mapManager = MapManager()
        
        mapManager.fetchData()
        
    }
}

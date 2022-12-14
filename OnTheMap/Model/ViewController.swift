//
//  ViewController.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/1/22.
//

import UIKit

class ViewController: UIViewController {
        
    
    @IBAction func loginTapped(_ sender: Any) {
        UdacityAPI.getRequestToken(completion: handleRequestTokenResponse(success: error:))
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func handleRequestTokenResponse(success: Bool, error: Error?) {
        if success {
            print(UdacityAPI.Auth.sessionId)
        }
    
    
}

}

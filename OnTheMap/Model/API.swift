//
//  API.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/1/22.
//

import Foundation
    
class parseAPI {
    enum Endpoint: String {
        case mapInformation = "https://onthemap-api.udacity.com/v1/StudentLocation"
    
        var url: URL {
            return URL(string: self.rawValue)!
        }
    }
}

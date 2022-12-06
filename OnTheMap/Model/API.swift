//
//  API.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/1/22.
//

import Foundation


//created a mapAIP calss to encapsulate all the code for the API
class mapAPI {
    enum Endpoint: String {
        //each case will be an endpoint
        case studentLocationsFromAPi = "https://onthemap-api.udacity.com/v1/StudentLocation"
        //created var url so you can access the endpoint through a varible
        var url: URL {
            return URL(string: self.rawValue)!
        }
    }
}


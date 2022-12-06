//
//  Location.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/2/22.
//

import Foundation

struct results: Codable {
    let results: [Location]
}

struct Location: Codable {
    //let objectId: String
    //let uniqueKey: String
    let firtName: String
    let LastName: String
    //let mapString: String
    //let mediaURL: String
    //let latitude: Double
    //let longitude: Double
    //let createdAt: String
    //let updatedAt: String
    //let ACL: String
}

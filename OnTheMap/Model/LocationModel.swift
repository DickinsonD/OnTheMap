//
//  LocationModel.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/8/22.
//

import Foundation
//create structs with same property value of the url data
struct LocationModel: Codable {
    let results: [StuData]
}

struct StuData: Codable {
    let createdAt: String
    let firstName: String
    let lastName: String
    let latitude: Double
    let longitude: Double
    let mapString: String
    let mediaURL: String
    let objectId: String
    let uniqueKey: String
    let updatedAt: String
}

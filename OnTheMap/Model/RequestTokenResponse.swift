//
//  RequestTokenResponse.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/14/22.
//

import Foundation


struct Login: Codable {
    let account: Account
    let session: Session
}
struct Account: Codable {
    let registered: Bool
    let key: String
}
struct Session: Codable {
    let id: String
    let expiration: String
}

//
//  UdacityAPI.swift
//  OnTheMap
//
//  Created by DANIEL DICKINSON on 12/9/22.
//

import Foundation


class UdacityAPI {
    
    static let shared = UdacityAPI()
    
    struct Auth {
        static var sessionId: String?
    }
    
    enum Endpoints {
        static let base = "https://onthemap-api.udacity.com/v1"
            case studentLocation
            case getRequestToken
        
        var urlValue: String {
            switch self {
            case.studentLocation:
                return Endpoints.base + "/StudentLocation?limit=10"
            case.getRequestToken:
                return Endpoints.base + "/session"
            }
        }
        var url: URL {
            return URL(string: urlValue)!
        }
    }
    
    class func getRequestToken (completion: @escaping(Bool, Error?) -> ()) {
        
        let task = URLSession.shared.dataTask(with: Endpoints.getRequestToken.url) { data, response, error in
            
            guard let data = data else {
                print("data was nil")
                return
            }
    
            //decode
            let decoder = JSONDecoder()
            do{
                let responseObject = try
                    decoder.decode(Login.self, from: data)
                completion(true, nil)
                Auth.sessionId = responseObject.session.id
            }catch {
                completion(false, nil)
            }
            
        }
        task.resume()
    }
    
    
    class func fetchLocationResults (completion: @escaping([StuData]) -> ()) {
        //let urlString = "https://onthemap-api.udacity.com/v1/StudentLocation"
        //let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: Endpoints.studentLocation.url) { data, response, error in
            
            guard let data = data else {
                print("data was nil")
                return
            }
    
            //decode
            guard let decodedData = try? JSONDecoder().decode(LocationResults.self, from: data) else {
                print("couldnt decode jsono")
                return
            }
            print(decodedData.results)
            completion(decodedData.results)
        }
        task.resume()
    }
}



struct LocationResults: Codable {
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



//
//  WebserviceApi.swift
//  URLSessionApp
//
//  Created by PugalMuni on 20/03/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import Foundation
class WebserviceAPI {
    // Web API for GET Method
    func executeWebAPIWithGetMethod(executeURL : URL, completionHandler: @escaping ([Course]?, Error?) -> Void) {
        var courses = [Course]()
        let session = URLSession.shared
        session.dataTask(with: executeURL) { (responseData, urlResponse, apiError) in
            guard let unWrappedData = responseData else {
                completionHandler(nil,apiError)
                return
            }
            do {
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                courses = try jsonDecoder.decode([Course].self, from: unWrappedData)
               //  println(log: jsonReponse!
                completionHandler(courses, nil)
            }
            catch {
                println(log: error.localizedDescription)
                //  pass the full error instead of error description
                completionHandler(nil, error)
            }
        }.resume()
    }
    
    // Web API for POST Method
    func executeWebAPIWithPostMethod(executeURL : URL, completionHandler : @escaping (User?, Error?) -> Void)
    {
        let session = URLSession.shared
        var webRequest = URLRequest(url: executeURL)
        let parameter = User(userName : "John", age : 34, dept : "IT",course : "MS")
        do{
            let jsonBody = try JSONEncoder().encode(parameter)
            webRequest.httpBody = jsonBody
        }
        catch {}
        webRequest.httpMethod = "POST"
        webRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        session.dataTask(with: webRequest) { (responseData, urlResponse, apiError) in
            guard let unwrappedData = responseData else {
                completionHandler(nil,apiError)
                return
            }
                do {
                    let jsonResponse = try JSONDecoder().decode(User.self, from: unwrappedData)
                    completionHandler(jsonResponse,nil)
                    //println(log: jsonObject)
                }catch {
                    println(log: error)
                    completionHandler(nil,apiError)
                }
            }.resume()
    }
}

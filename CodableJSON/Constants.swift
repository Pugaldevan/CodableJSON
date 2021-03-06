//
//  Constants.swift
//  URLSessionApp
//
//  Created by PugalMuni on 23/03/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import Foundation

// MARK: - Disable the print statement
var isDevelopment : Bool = true
func println(log: Any)
{
    if !isDevelopment
    {
        return
    }
    print(log)
}
struct StringConstants {
    //"https://jsonplaceholder.typicode.com/users"
    static let kWEBAPIGETMETHODURL = "https://api.letsbuildthatapp.com/jsondecodable/courses_snake_case"
    static let kWEBAPIPOSTMETHODURL = "https://jsonplaceholder.typicode.com/posts"

}

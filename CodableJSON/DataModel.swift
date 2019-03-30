//
//  DataModel.swift
//  URLSessionApp
//
//  Created by PugalMuni on 21/03/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import Foundation

struct DataModel : Codable {
    
    var data : [Data]
}
struct Data : Codable {
    
    var id : Int
    var name : String
    var image : String
}

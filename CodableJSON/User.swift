//
//  User.swift
//  CodableJSON
//
//  Created by PugalMuni on 26/03/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import Foundation

struct User : Encodable,Decodable {
    
    var userName : String
    var age : Int
    var dept : String
    var course : String
}

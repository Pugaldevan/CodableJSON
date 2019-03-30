//
//  Media.swift
//  CodableJSON
//
//  Created by PugalMuni on 28/03/19.
//  Copyright © 2019 PugalMuni R. All rights reserved.
//

import Foundation
class Course : Decodable {
    var id : Int
    var name : String
    var link : String
    var imageUrl :String
    var numberOfLessons : Int
    /*
    private enum CodingKeys : String, CodingKey {
        case id,name, link
        case imageUrl = "image_url"
        case numberOfLessons = "number_of_lessons"
    }
 */
}

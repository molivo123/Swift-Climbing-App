//
//  Datas.swift
//  CPSC357_Final
//
//  Created by Matthew on 12/8/21.
//

import Foundation
import SwiftUI

//model that handles all variables that make up a team
struct Datas: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String

    var imageName: String
        var image: Image {
            Image(imageName)
    }
    var description: String
    
}

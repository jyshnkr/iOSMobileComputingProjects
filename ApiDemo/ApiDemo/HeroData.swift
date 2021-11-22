//
//  HeroData.swift
//  ApiDemo
//
//  Created by JayaShankar Mangina on 11/18/21.
//

import Foundation
import UIKit

struct HeroData: Codable{
    var name: String
    var localized_name : String
    var attack_type : String
    var primary_attr : String
}

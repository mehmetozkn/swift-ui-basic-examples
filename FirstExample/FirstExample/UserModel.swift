//
//  UserModel.swift
//  FirstExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import Foundation
import SwiftUI

struct UserModel: Identifiable {
    var id = UUID()
    var authority: String
    var names: [String]
    
}


let group1 = UserModel(authority: "Admin", names: ["Mehmet", "Osman"])

let group2 = UserModel(authority: "Normal", names: ["Ahmet", "Ayşe"])

let userArray = [group1, group2]

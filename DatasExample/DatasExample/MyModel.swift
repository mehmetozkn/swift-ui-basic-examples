//
//  MyModel.swift
//  DatasExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import Foundation

struct MyModel: Identifiable {
    var id = UUID()
    var name: String
    var content: String
}


var model1 = MyModel(name: "Okula Git", content: "Eve Gelirken")
var model2 = MyModel(name: "İse Git", content: "Ise Giderken")

var modelArray = [model1, model2]

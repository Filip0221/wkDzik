//
//  AssortmentFood.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import UIKit

class AssortmentFood: Identifiable, Assortment {
    var id = UUID()
    var name: String = ""
    var price: Double = 0.0
    var image: String = ""
    var description: String = ""
    var availability: Bool = false
    var novelty: Bool = false
    var taste: String = ""
    var category: String = "Food"
    
    init(id: UUID = UUID(), name: String, price: Double, image: String, description: String, availability: Bool, novelty: Bool, taste: String = "", category: String = "Food") {
        self.id = id
        self.name = name
        self.price = price
        self.image = image
        self.description = description
        self.availability = availability
        self.novelty = novelty
        self.taste = taste
        self.category = "Food"
    }
}

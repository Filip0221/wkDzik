//
//  Assortment.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import UIKit

class AssortmentClothes:Assortment, Identifiable {
    var id = UUID()
    var name: String = ""
    var price: Double = 0.0
    var image: String = ""
    var description: String = ""
    var availability: Bool = false
    var novelty: Bool = false
    var size: String = ""
    var color: String = ""
    var category: String = "Clothes"
    
    init(name: String, price: Double, image: String, description: String, availability: Bool, novelty: Bool, size: String, color: String) {
        self.name = name
        self.price = price
        self.image = image
        self.description = description
        self.availability = availability
        self.novelty = novelty
        self.size = size
        self.color = color
        self.category = "Clothes"
    }
}

//
//  Assortment.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import Foundation

protocol Assortment: Identifiable{
    var id: UUID {get}
    var name: String {get set}
    var price: Double {get set}
    var image: String {get set}
    var description: String {get set}
    var availability: Bool {get set}
    var novelty: Bool {get set}
    var category: String {get set}
}

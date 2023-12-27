//
//  ProductInCart.swift
//  wkDzik
//
//  Created by Filip Skup on 27/12/2023.
//

import UIKit

class ProductInCart: NSObject {
    var product: Assortment
    var quantity: Int
    
    init(product: Assortment, quantity: Int) {
        self.product = product
        self.quantity = quantity
    }
}

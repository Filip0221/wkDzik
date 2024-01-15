//
//  ProductInCart.swift
//  wkDzik
//
//  Created by Filip Skup on 27/12/2023.
//

import UIKit

class ProductInCart: NSObject {
    var product: any Assortment
    var quantity: Int

    init(product: any Assortment, quantity: Int) {
        self.product = product
        self.quantity = quantity
    }
    func updateQuantity(newQuantity: Int){
        self.quantity = newQuantity
    }

}

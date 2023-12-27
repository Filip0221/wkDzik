//
//  Basket.swift
//  wkDzik
//
//  Created by Filip Skup on 27/12/2023.
//

import UIKit

class ShoppingCart: NSObject{
    var products: [Assortment] = []
    
    func addProduct(product: Assortment){
        products.append(product)
    }
}

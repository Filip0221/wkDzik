//
//  Basket.swift
//  wkDzik
//
//  Created by Filip Skup on 27/12/2023.
//

import UIKit

class ShoppingCart: NSObject, ObservableObject{
    @Published var products: [ProductInCart] = []
    var assortment = AssortmentData().assortment
    
    func addProduct(product: ProductInCart){
        if let existingProductIndex = products.firstIndex(where: { $0.product.id == product.product.id }) {
            // Produkt już istnieje w koszyku, zwiększ ilość
            products[existingProductIndex].quantity += 1
        } else {
            // Dodaj nowy produkt do koszyka
            let productInCart = ProductInCart(product: (any Assortment).self as! (any Assortment), quantity: 1)
            products.append(productInCart)
        }
    }
    func addProducts(productsToAdd: [ProductInCart]) {
            for productToAdd in productsToAdd {
                addProduct(product: productToAdd)
            }
        }
    func addAssortmentItemsToBasket() {
        for item in assortment {
               let existingProduct = products.first { $0.product.id == item.id }

               if let existingProduct = existingProduct {
                   // Produkt już istnieje w koszyku, zwiększ jego ilość
                   existingProduct.quantity += 1
               } else {
                   // Dodaj nowy produkt do koszyka
                   products.append(ProductInCart(product: item, quantity: 1))
               }
           }
    }
    func updateQuantity(productInCart: ProductInCart, newQuantity: Int) {
        if let index = products.firstIndex(where: { $0.product.id == productInCart.product.id }) {
            products[index].quantity = newQuantity
        }
    }
}


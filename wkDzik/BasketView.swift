//
//  BasketView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//
//dodać klase koszyk w której beda 2 zmienne
// obiekt klasy assortment
// liczba wystąpien obiektu
import SwiftUI

// BasketView.swift
struct BasketView: View {

    @ObservedObject var shoppingCart = ShoppingCart()
    
    var body: some View {
        ScrollView {
            VStack {
                // obrazek dzika na górze ekranu
                Image("dzik")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .padding()
                
                Text("Twój koszyk")
                
                Button("Dodaj przedmioty do koszyka") {
                    self.shoppingCart.addAssortmentItemsToBasket()
                    print(shoppingCart.products.count)
                }

                ForEach(shoppingCart.products.indices, id: \.self) { index in
                    let productInCart = shoppingCart.products[index]
                    let product = productInCart.product

                    HStack {
                        Image(product.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        
                        VStack {
                            Text(product.name)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .padding(.trailing, 30.0)
                            
                            HStack {
                                Picker("Ilość", selection: Binding(
                                    get: { productInCart.quantity },
                                    set: { newQuantity in
                                        shoppingCart.updateQuantity(productInCart: productInCart, newQuantity: newQuantity)
                                    } )) {
                                        ForEach(1...100, id: \.self) { number in
                                            Text("\(number)")
                                        }
                                    }
                                .pickerStyle(DefaultPickerStyle())
                                
                                Text(String(format: "%.2f zł", product.price))
                            }
                        }
                    }
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .cornerRadius(30.0)
                    .padding(.horizontal)
                }
            }
        }
    }
}


#Preview {
    BasketView()
}

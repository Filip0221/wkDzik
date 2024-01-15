//
//  DetalView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import SwiftUI

struct DetailView: View {
    var product: any Assortment

    var body: some View {
        VStack {
            Text(product.name)
                .font(.title)
                .padding()

            Text("Price: \(product.price) zł")
                .padding()

            Text("Description: \(product.description)")
                .padding()

            // Dodaj inne widoki dla innych właściwości produktu

            Spacer()
        }
        .navigationBarTitle("Product Details", displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = AssortmentClothes(
            name: "Sample Product",
            price: 49.99,
            image: "sample_image",
            description: "This is a sample product description.",
            availability: true,
            novelty: false,
            size: "M",
            color: "Blue"
        )

        return NavigationView {
            DetailView(product: sampleProduct)
        }
    }
}


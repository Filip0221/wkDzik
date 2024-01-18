//
//  DetalView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import SwiftUI

struct DetailView: View {
    var product: any Assortment
    @State var assortmentData = AssortmentData()
    @State private var isDescriptionVisible = false
    var body: some View {
        ScrollView{
            VStack {
                
                // zdjęcie produktu
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Text(product.name)
                    .font(.title)
                    .padding(.vertical)
                    .bold()
                HStack{
                    Text("\(String(format: "%.2f zł", product.price))")
                        .font(.title3)
                        .padding([.horizontal, .bottom])
                    Spacer()
                }
                
                Button("dodaj do koszyka"){
                    assortmentData.addToBascet(product: product)
                }
                .foregroundColor(.white)
                .background(Color(.black))
                .buttonStyle(BorderedButtonStyle())
                .cornerRadius(20)
                Toggle(isOn: $isDescriptionVisible) {
                    HStack {
                        Image(systemName: isDescriptionVisible ? "chevron.up.circle" : "chevron.down.circle")
                        Text("Opis")
                    }
                    .font(.headline)
                }
                .padding(10)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
                
                if isDescriptionVisible {
                    Text(product.description)
                        .padding()
                        .transition(.slide) // Opcjonalna animacja przejścia
                        .animation(.easeInOut)
                }
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = AssortmentClothes(
            name: "Sample Product",
            price: 49.99,
            image: "assortment/skarpety_biale",
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


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
    @ObservedObject var assortmentData = AssortmentData()
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    // obrazek dzika na górze ekranu
                    Image("dzik")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .padding()
                    
                    Text("Twój koszyk")
                    ForEach(assortmentData.bascet, id: \.id) { product in
                        NavigationLink(destination: DetailView(product: product)) {
                            VStack {
                                Image(product.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding(.top)
                                Text(product.name)
                                    .foregroundStyle(Color(.black))
                                    .padding([.leading, .trailing])
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                    .fixedSize(horizontal: false, vertical: true)
                                Text(String(format: "%.2f zł", product.price))
                                    .foregroundStyle(Color(.black))
                                    .padding(.bottom)
                            }
                            .padding(.vertical)
                            .cornerRadius(10)
                            .frame(width: 200, height: 200)
                        }
                    }
                    
                }
            }
        }
    }
}


#Preview {
    BasketView()
}

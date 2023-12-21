//
//  BasketView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import SwiftUI

struct BasketView: View {
    let assortment = AssortmentData()
    
       var body: some View {
        ScrollView{
            VStack{
// obrazek dzik na górze ekranu
                Image("dzik")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:50)
                    .padding()
                Text("Twój koszyk")
                Button("Dodaj przedmioty do koszyka") {
                                assortment.addAssortmentItemsToBasket()
                               }
                var bascet = assortment.duplicatesCount()
                
                ForEach (bascet, id: \.assortment.id) { product in
                    HStack{
//
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 200, height: 200)
//                            .padding()
//                        Text(bascet.name)
//                            .font(.headline)
//                            .padding([.top, .leading, .trailing] ,10)
                    }
                }
                

            }
        }
    }
}

#Preview {
    BasketView()
}

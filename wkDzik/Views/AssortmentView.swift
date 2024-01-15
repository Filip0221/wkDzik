//
//  ZywnoscView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import SwiftUI

struct AssortmentView: View {
    @ObservedObject var assortmentData = AssortmentData()
    @State private var isFilterViewPresented = false
    @State var filterCategory = "Wszystkie"
    var body: some View {
        ScrollView {
            VStack {
                // Obrazek dzika na górze ekranu
                Image("dzik")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .padding(.top)
                }
            HStack{
                Spacer()
                Button("Filtruj"){
                    isFilterViewPresented.toggle()
                }.sheet(isPresented: $isFilterViewPresented){
                    FilterView(selectedCategory: $filterCategory)
                }
                .buttonStyle(.bordered)
                .padding()
            }
            Text("Zastosowano filtr: \(filterCategory)")
            
                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    ForEach( assortmentData.filterAssortment(categories: filterCategory), id: \.id) { product in
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
                .padding(.bottom, 1.0)
            }
        }
}


#Preview {
    AssortmentView()
}


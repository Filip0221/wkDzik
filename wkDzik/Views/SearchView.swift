//
//  SearchView.swift
//  wkDzik
//
//  Created by Filip Skup on 15/01/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchTextWrite: String = ""
    @State private var searchText: String = ""
    @ObservedObject var assortmentData = AssortmentData()
    @State var howMany = AssortmentData().assortment.count
    var body: some View {
        VStack{
            NavigationView{
                ScrollView{
                    VStack{
                        // Obrazek dzika na górze ekranu
                        Image("dzik")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .padding(.top)
                    }
                    HStack{
                        TextField("Wyszukaj", text: $searchTextWrite)
                            .disableAutocorrection(true)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 1))
                            .padding([.top, .leading, .bottom])
                        Button(action:{
                            searchText = searchTextWrite
                            howMany = assortmentData.searchAssortment(searchText: searchText).count
                        }) {Image(systemName: "magnifyingglass")
                                .imageScale(.medium)
                                .padding([.top, .bottom, .trailing])
                        }
                    }
                    Text("Liczba produktów: \(String(howMany))")
                        .padding(.bottom)
                    Divider()
                        .padding(.horizontal)
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach( assortmentData.searchAssortment(searchText: searchText), id: \.id) { product in
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
    }
}

#Preview {
    SearchView()
}

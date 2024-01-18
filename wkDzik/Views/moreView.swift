//
//  moreView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/01/2024.
//

import SwiftUI

struct moreView: View {
    @State private var isExpandedProductsDZIK = false
    @State private var isExpandedClothes = false
    @State private var isExpandedWomen = false
    @State private var isExpandedMen = false
    @State private var isExpandedKids = false
    @State private var isExpandedCollections = false
    @State private var isExpandedAccessories = false
    @State private var isExpandedFood = false
    @State private var isExpandedLook = false


    
    var body: some View {
        NavigationView{
            VStack {
                // Produkty DZIK
                HStack {
                    NavigationLink(destination: AssortmentView()){
                        Text("Produkty DZIK")
                            .foregroundStyle(Color(.black))
                    }
                    Spacer()
                    Image(systemName: isExpandedProductsDZIK ? "chevron.up" : "chevron.down")
                }
                .padding()
                .onTapGesture {
                    withAnimation {
                        isExpandedProductsDZIK.toggle()
                    }
                }
                Divider()
                    .padding(.horizontal)
                // Nowości
                HStack {
                    NavigationLink(destination: AssortmentView()){
                        Text("Nowości")
                            .foregroundStyle(Color(.black))
                    }
                    Spacer()
                }.padding()
                Divider()
                    .padding(.horizontal)
                // Ubrania
                HStack {
                    NavigationLink(destination: UbraniaView()){
                        Text("Ubrania")
                            .foregroundStyle(Color(.black))
                    }
                    Spacer()
                    Image(systemName: isExpandedClothes ? "chevron.up" : "chevron.down")
                }
                .padding()
                .onTapGesture {
                    withAnimation {
                        isExpandedClothes.toggle()
                    }
                }
                Divider()
                    .padding(.horizontal)
                
                // rozwiniecie po strzałce obok produkty DZIK
                if isExpandedProductsDZIK {
                    
                    VStack{
                        NavigationLink(destination: AssortmentView()){
                            Image("dzik_energy")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15.0)
                                .padding(.horizontal)
                        }
                        NavigationLink(destination: AssortmentView()){
                            Image("dzik_zero_caffeine")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15.0)
                                .padding(.horizontal)
                        }
                        NavigationLink(destination: AssortmentView()){
                            Image("dzik_vitamin_boost")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15.0)
                                .padding(.horizontal)
                        }
                    }
                }
                // rozwinięcie po strzałce ubrania
                if isExpandedClothes {
                    VStack{
                        // rozwinięcie kobiety
                        HStack {
                            NavigationLink(destination: UbraniaView()){
                                Text("Kobiety")
                                    .foregroundStyle(Color(.black))
                            }
                            Spacer()
                            Image(systemName: isExpandedWomen ? "chevron.up" : "chevron.down")
                        }
                        .padding()
                        .onTapGesture {
                            withAnimation {
                                isExpandedWomen.toggle()
                            }
                        }
                        Divider()
                            .padding(.trailing)
                        
                        // rozwinięcie mężczyźni
                        HStack {
                            NavigationLink(destination: UbraniaView()){
                                Text("Mężczyźni")
                                    .foregroundStyle(Color(.black))
                            }
                            Spacer()
                            Image(systemName: isExpandedMen ? "chevron.up" : "chevron.down")
                        }
                        .padding()
                        .onTapGesture {
                            withAnimation {
                                isExpandedMen.toggle()
                            }
                        }
                        Divider()
                            .padding(.trailing)
                        // rozwinięcie dzieci
                        HStack {
                            NavigationLink(destination: UbraniaView()){
                                Text("Dzieci")
                                    .foregroundStyle(Color(.black))
                            }
                            Spacer()
                            Image(systemName: isExpandedKids ? "chevron.up" : "chevron.down")
                        }
                        .padding()
                        .onTapGesture {
                            withAnimation {
                                isExpandedKids.toggle()
                            }
                        }
                        Divider()
                            .padding(.trailing)
                        // rozwinięcie kolekcje
                        HStack {
                            NavigationLink(destination: UbraniaView()){
                                Text("Kolekcje")
                                    .foregroundStyle(Color(.black))
                            }
                            Spacer()
                            Image(systemName: isExpandedCollections ? "chevron.up" : "chevron.down")
                        }
                        .padding()
                        .onTapGesture {
                            withAnimation {
                                isExpandedCollections.toggle()
                            }
                        }
                        Divider()
                            .padding(.trailing)
                    }.padding(.leading)
                    
                }
            }
        }
    }
}
#Preview {
    moreView()
}

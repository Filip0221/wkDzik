//
//  HomeView.swift
//  wkDzik
//
//  Created by Filip Skup on 14/12/2023.
//

import SwiftUI
import Foundation

struct HomeView: View {
// lista przycisków przekierowujących ubrania, suplementy, napoje, żywność.
    @State private var buttons: [ButtonHome] = [
        ButtonHome(imageName: "ubrania_butt", buttonText: "UBRANIA", destinationView: AnyView(AssortmentView(filterCategory: "Clothes"))),
        ButtonHome(imageName: "suplementy_butt", buttonText: "SUPLEMENTY", destinationView: AnyView(AssortmentView(filterCategory: "Food"))),
        ButtonHome(imageName: "napoje_butt", buttonText: "NAPOJE", destinationView: AnyView(AssortmentView(filterCategory: "Food"))),
        ButtonHome(imageName: "zywnosc_butt", buttonText: "ŻYWNOŚĆ", destinationView: AnyView(AssortmentView(filterCategory: "Food")))
    ]
// ciało widoku
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
// obrazek dzik na górze ekranu
                    Image("dzik")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:50)
                        .padding()
// obrazek pod obrazkiem dzik
                    Image("swieta_home")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
// przyciski z listy buttons
                    ForEach (buttons) { buttonHome in
                        NavigationLink(destination: buttonHome.destinationView, label: {
                            
                                    Image(buttonHome.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15.0)
                                        .overlay(
                                            Text(buttonHome.buttonText)
                                                .font(.title)
                                                .foregroundColor(.white)
                                            
                                        )
                                .padding([.top, .leading, .trailing])
                        })
                    }
// blok nowości
                    Text("Nowości")
                        .bold()
                        .font(.title)
                        .padding(.top, 40.0)
                    ScrollView(.horizontal){
                        HStack(spacing: 10){
                            let assortmentData = AssortmentData()
                            let newAssortment = assortmentData.findNew()
                            ForEach(newAssortment, id: \.id){assortment in
                                VStack{
                                    Image(assortment.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height: 200)
                                        .padding()
                                    Text(assortment.name)
                                        .font(.headline)
                                        .padding([.top, .leading, .trailing] ,10)
                                    Text(String(format: "%.2fzł", assortment.price))
                                        .font(.subheadline)
                                        .padding(.vertical, 5)
                                    
                            
                                }.background(Color(.init(red: 0.9, green: 0.9, blue: 0.9)))
                                    .cornerRadius(10.0)
                            }
                        }.padding([.leading, .bottom, .trailing])
                    }
// przycisk zobacz wszystkie
                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                        Text("Zobacz wszystkie")
                            .foregroundStyle(Color(.white))
                    }.padding()
                        .background(Color(.black))
                        .cornerRadius(90)
// obrazek z przekierowaniem do widoku
                    NavigationLink(destination: AssortmentView(filterCategory: "Food")){
                        Image("badz_duzy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal, 5)
                    }.padding()
// blok rośnij duży
                    Text("Rośnij duży!")
                        .bold()
                        .font(.title)
                        .padding(.top, 40.0)
                    ScrollView(.horizontal){
                        HStack(spacing: 10){
                            let assortmentData = AssortmentData()
                            let foodAssortment = assortmentData.findFood()
                            ForEach(foodAssortment, id: \.id){assortment in
                                VStack{
                                    Image(assortment.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height: 200)
                                        .padding()
                                    Text(assortment.name)
                                        .font(.headline)
                                        .padding([.top, .leading, .trailing] ,10)
                                    Text(String(format: "%.2fzł", assortment.price))
                                        .font(.subheadline)
                                        .padding(.vertical, 5)
                                    
                            
                                }.background(Color(.init(red: 0.9, green: 0.9, blue: 0.9)))
                                    .cornerRadius(10.0)
                            }
                        }.padding([.leading, .bottom, .trailing])
                    }
                    
                }
            }
        }
    }
}


#Preview {
    HomeView()
}

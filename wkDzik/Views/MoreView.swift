//
//  moreView.swift
//  wkDzik
//
//  Created by Filip Skup on 18/01/2024.
//

import SwiftUI

struct MoreView: View {
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
            ScrollView{
                VStack {
// Produkty DZIK
                    HStack {
                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
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
// rozwiniecie po strzałce obok produkty DZIK
                    if isExpandedProductsDZIK {
                        
                        VStack{
                            NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                Image("dzik_energy")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15.0)
                                    .padding(.horizontal)
                            }
                            NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                Image("dzik_zero_caffeine")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15.0)
                                    .padding(.horizontal)
                            }
                            NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                Image("dzik_vitamin_boost")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15.0)
                                    .padding(.horizontal)
                            }
                        }
                    }
// Nowości
                    HStack {
                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                            Text("Nowości")
                                .foregroundStyle(Color(.black))
                        }
                        Spacer()
                    }.padding()
                    Divider()
                        .padding(.horizontal)
// Ubrania
                    HStack {
                        NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
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
                    
                    
// rozwinięcie po strzałce ubrania
                    if isExpandedClothes {
                        VStack{
// rozwinięcie kobiety
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
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
                            // rozwinięcie kobiety c.d.
                            if isExpandedWomen{
                                VStack{
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Legginsy i spodnie")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Bluzy")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Koszulki")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Skarpety")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Staniki sportowe")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Spodenki")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                }
                                .padding(.leading)
                            }
                            // Koniec sekcji kobiety
                            // rozwinięcie mężczyźni
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
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
                            // rozwinieie mężczyźni cd.
                            if isExpandedMen{
                                VStack{
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Koszulki")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Tank topy")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Bluzy")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Spodnie i legginsy")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Skarpety")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Bielizna")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Spodenki")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Czapki")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                }
                                .padding(.leading)
                            }
// koniec rozwinięcie mężczyźni
// rozwinięcie dzieci
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
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
// rozwinięcie dzieci c.d.
                            if isExpandedKids{
                                VStack{
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Body")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Bluzy")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                    HStack {
                                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                            Text("Koszulki")
                                                .foregroundStyle(Color(.black))
                                        }
                                        Spacer()
                                    }.padding()
                                    Divider()
                                        .padding(.horizontal)
                                }
                                .padding(.leading)
                            }
// koniec rozwinięcie dzieci
// rozwinięcie kolekcje
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
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
// rozwinięcie kolekcje c.d.
                        if isExpandedCollections{
                            VStack{
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("FALL WINTER 23")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("SUMMER 23")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("SUMMER 23 - WOMEN")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("SPRING SUMMER 23")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("DZIK BASIC")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("DZIK KLASYK")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("DZIK PRO")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("DRWAL")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("GAMING")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("JTCNW")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("WK DZIK")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("NEW SCHOOL 2")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("SPORTOWA POLSKA")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                HStack {
                                    NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                        Text("DŹWIGAJ DZIEWCZYNO")
                                            .foregroundStyle(Color(.black))
                                    }
                                    Spacer()
                                }.padding()
                                Divider()
                                    .padding(.horizontal)
                                
                            }
                            .padding(.horizontal)
                            .padding(.leading)
                        }
// koniec rozwinięcia kolekcje
                        
                    }
// Akcesoria
                    HStack {
                        NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
                            Text("Akcesoria")
                                .foregroundStyle(Color(.black))
                        }
                        Spacer()
                        Image(systemName: isExpandedAccessories ? "chevron.up" : "chevron.down")
                    }
                    .padding()
                    .onTapGesture {
                        withAnimation {
                            isExpandedAccessories.toggle()
                        }
                    }
                    Divider()
                        .padding(.horizontal)
                    // rozwinięcie po strzałce akcesoria
                    if isExpandedAccessories{
                        VStack{
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Zestawy")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Akcesoria treningowe")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Czapli i szaliki")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Torby i plecaki")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Shackery i kubki")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Okulary przeciwsłoneczne")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Opaski i Piny")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Ksiązki")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                        }
                        .padding(.leading)
                    }
// Suplementy i odżywianie
                    HStack {
                        NavigationLink(destination: AssortmentView(filterCategory: "Clothes")){
                            Text("Suplemeny i odżywianie")
                                .foregroundStyle(Color(.black))
                        }
                        Spacer()
                        Image(systemName: isExpandedFood ? "chevron.up" : "chevron.down")
                    }
                    .padding()
                    .onTapGesture {
                        withAnimation {
                            isExpandedFood.toggle()
                        }
                    }
                    Divider()
                        .padding(.horizontal)
// Suplementy i odżywianie rozwinięcie
                    if isExpandedFood{
                        VStack{
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Zestawy")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Białko Dobre WHEY")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Przedtreningówki")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Witaminy")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Cytruliny")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Kraatyna")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Sosy zero kalorii")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Batony")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Kawy")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                            HStack {
                                NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                                    Text("Wafle")
                                        .foregroundStyle(Color(.black))
                                }
                                Spacer()
                            }.padding()
                            Divider()
                                .padding(.horizontal)
                        }
                        .padding(.leading)
                    }
// Suplementy i odżywianie koniec
// LookBook
                    HStack {
                        NavigationLink(destination: AssortmentView(filterCategory: "Wszystkie")){
                            Text("Lookbook")
                                .foregroundStyle(Color(.black))
                        }
                        Spacer()
                    }.padding()
                    Divider()
                        .padding(.horizontal)
                }
            }
        }
    }
}
#Preview {
    MoreView()
}

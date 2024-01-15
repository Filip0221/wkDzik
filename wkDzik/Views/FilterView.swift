//
//  FilterView.swift
//  wkDzik
//
//  Created by Filip Skup on 15/01/2024.
//

import SwiftUI

struct FilterView: View {
    @Environment(\.presentationMode) var presentationMode
    // Zmienna pozwalająca wrócic do poprzedniego widoku
    @ObservedObject var assortmentData = AssortmentData()
    @State private var selectedCategory = "Clothes"
    var body: some View {
        NavigationView{
            VStack{
                Picker("Kategoria", selection: $selectedCategory){
                    ForEach(assortmentData.categories, id: \.self){category in
                        Text(category)
                    }
                }
                .pickerStyle(.inline)
                Text(selectedCategory)
                Button("Zastosuj"){
                    presentationMode.wrappedValue.dismiss()
                    // Zastosowanie zmiennej pozwalającej na powrót do poprzedniego widoku
                }.buttonStyle(.bordered)
                    .padding()
            }
        }
    }
}

#Preview {
    FilterView()
}

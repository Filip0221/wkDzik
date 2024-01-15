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
    @Binding var selectedCategory: String
    @State private var newSelectedCategory: String = "Wszystkie"
    var body: some View {
        NavigationView{
            VStack{
                Picker("Kategoria", selection: $newSelectedCategory){
                    ForEach(assortmentData.categories, id: \.self){category in
                        Text(category)
                    }
                }
                .pickerStyle(.inline)
                Text(newSelectedCategory)
                Button("Zastosuj"){
                    self.selectedCategory = newSelectedCategory
                    presentationMode.wrappedValue.dismiss()
                }.buttonStyle(.bordered)
                    .padding()
            }
        }
    }
}

#Preview {
    FilterView(selectedCategory: .constant("Wszystkie"))
}

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
    @State var newSelectedCategory: String
    var body: some View {
        NavigationView{
            VStack{
                Picker("Kategoria", selection: $newSelectedCategory){
                    ForEach(assortmentData.categories, id: \.self){category in
                        Text(category)
                    }
                }
                .pickerStyle(.inline)
                HStack{
                    Button("Zastosuj"){
                        self.selectedCategory = newSelectedCategory
                        presentationMode.wrappedValue.dismiss()
                    }.buttonStyle(.bordered)
                        .padding()
                    Button("Usuń filtry"){
                        self.selectedCategory = "Wszystkie"
                        newSelectedCategory = "Wszystkie"
                    }.buttonStyle(.bordered)
                        .padding([.top, .bottom, .trailing])
                        .foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    FilterView(selectedCategory: .constant("Wszystkie"), newSelectedCategory: "Wszystkie")
}

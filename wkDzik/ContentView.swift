//
//  ContentView.swift
//  wkDzik
//
//  Created by Filip Skup on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                VStack {
                    Text("Wyszukaj")
                }
                .navigationTitle("Widok 2")
            .tabItem {
                Label("Wyszukaj", systemImage: "magnifyingglass.circle")
            }
            
                VStack {
                    Text("Konto")
                }
                .navigationTitle("Konto")
            
            .tabItem {
                Label("Konto", systemImage: "person.crop.circle")
            }
            VStack {
                HomeView()
            }
        .tabItem {
            Label("Strona główna", systemImage: "homekit")
        }
                VStack {
                    Text("Koszyk")
                }
                .navigationTitle("Koszyk")
            .tabItem {
                Label("Koszyk", systemImage: "basket")
            }
            VStack {
                Text("Drugi Widok")
            }
            .navigationTitle("Widok 2")
        .tabItem {
            Label("Więcej", systemImage: "text.alignleft")
        }
        }
    }
}

#Preview {
    ContentView()
}

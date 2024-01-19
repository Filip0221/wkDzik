//
//  ContentView.swift
//  wkDzik
//
//  Created by Filip Skup on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
                VStack {
                    SearchView()
                }
                .navigationTitle("Widok 2")
                .tabItem {
                    Label("Wyszukaj", systemImage: "magnifyingglass.circle")
                }
                .tag(0)
            
                VStack {
                    Text("Konto")
                }
                .navigationTitle("Konto")
                .tabItem {
                    Label("Konto", systemImage: "person.crop.circle")
                }
                .tag(1)
            VStack {
                HomeView()
            }
            .tabItem {
                Label("Strona główna", systemImage: "homekit")
            }
            .tag(2)
                VStack {
                    BasketView()
                }
                .navigationTitle("Koszyk")
                .tabItem {
                    Label("Koszyk", systemImage: "basket")
                }
                .tag(3)
            VStack {
                MoreView()
            }
            .navigationTitle("Widok 2")
            .tabItem {
                Label("Więcej", systemImage: "text.alignleft")
            }
            .tag(4)
        }
    }
}

#Preview {
    ContentView()
}

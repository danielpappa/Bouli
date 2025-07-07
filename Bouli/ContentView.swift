//
//  ContentView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "fork.knife")
                }
            OrdersView()
                .tabItem {
                    Label("Orders", systemImage: "bag.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}

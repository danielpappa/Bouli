//
//  ContentView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sideMenuIsShowing: Bool = false
    @State private var selectedMenuSection: MenuSection = .home
    var body: some View {
        NavigationStack {                
            Group {
                switch selectedMenuSection {
                case .home:
                    HomeView()
                case .menu:
                    MenuView()
                case .orders:
                    OrdersView()
                case .profile:
                    ProfileView()
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        withAnimation {
                            sideMenuIsShowing.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(Color.white, for: .navigationBar)
        .fullScreenCover(isPresented: $sideMenuIsShowing) {
            SideMenuView(isShowing: $sideMenuIsShowing, selectedSection: $selectedMenuSection)
        }
    }
}

#Preview {
    ContentView()
}

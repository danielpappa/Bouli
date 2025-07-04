@_private(sourceFile: "ContentView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/ContentView.swift", line: 14)
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
                        Image(systemName: __designTimeString("#5350.[1].[2].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "line.horizontal.3"))
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
    
#sourceLocation()
    }
}

import struct Bouli.ContentView
#Preview {
    ContentView()
}




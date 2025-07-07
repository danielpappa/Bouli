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
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/ContentView.swift", line: 12)
        TabView {
            HomeView()
                .tabItem {
                    Label(__designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Home"), systemImage: __designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[1].value", fallback: "house.fill"))
                }
            MenuView()
                .tabItem {
                    Label(__designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Menu"), systemImage: __designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.[0].arg[1].value", fallback: "fork.knife"))
                }
            OrdersView()
                .tabItem {
                    Label(__designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Orders"), systemImage: __designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value.[0].arg[1].value", fallback: "bag.fill"))
                }
            ProfileView()
                .tabItem {
                    Label(__designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0].arg[0].value", fallback: "Profile"), systemImage: __designTimeString("#17157.[1].[0].property.[0].[0].arg[0].value.[3].modifier[0].arg[0].value.[0].arg[1].value", fallback: "person.fill"))
                }
        }
    
#sourceLocation()
    }
}

import struct Bouli.ContentView
#Preview {
    ContentView()
}




@_private(sourceFile: "SideMenuView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SideMenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/SideMenuView.swift", line: 15)
        ZStack {
            Color(red: __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]", fallback: 102)/__designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0]", fallback: 127)/__designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[0]", fallback: 54)/__designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1]", fallback: 255))
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: 20)) {
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isShowing = __designTimeBoolean("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0].[0]", fallback: false)
                        }
                    }) {
                        Image(systemName: __designTimeString("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "xmark.circle.fill"))
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                }

                Text(__designTimeString("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "bouli"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[1].modifier[3].arg[0].value", fallback: 5))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom)
                
                VStack(spacing: __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[0].value", fallback: 15)) {
                    ForEach(MenuSection.allCases) { section in
                        Button(action: {
                            selectedSection = section
                            withAnimation {
                                isShowing = __designTimeBoolean("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].arg[1].value.[0].arg[0].value.[1].arg[0].value.[0].[0]", fallback: false)
                            }
                        }) {
                            HStack {
                                Image(systemName: section.systemImageName)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                
                                Text(section.rawValue)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 10))
                            .frame(maxWidth: .infinity)
                            .background(selectedSection == section ? Color.black.opacity(__designTimeFloat("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.then.modifier[0].arg[0].value", fallback: 0.3)) : Color.clear)
                            .cornerRadius(__designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[2].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 10))
                        }
                    }
                }
                .padding(.horizontal, __designTimeInteger("#23008.[1].[2].property.[0].[0].arg[0].value.[1].arg[1].value.[2].modifier[0].arg[1].value", fallback: 30))
                Spacer()
            }
            .safeAreaPadding(.top)
            .safeAreaPadding(.bottom)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    
#sourceLocation()
    }
}

import struct Bouli.SideMenuView
#Preview {
    SideMenuView(isShowing: .constant(true), selectedSection: .constant(.home))
}




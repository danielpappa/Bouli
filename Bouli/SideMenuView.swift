//
//  SideMenu.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedSection: MenuSection
    
    var body: some View {
        ZStack {
            Color(red: 102/255, green: 127/255, blue: 54/255)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isShowing = false
                        }
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                }

                Text("bouli")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom)
                
                VStack(spacing: 15) {
                    ForEach(MenuSection.allCases) { section in
                        Button(action: {
                            selectedSection = section
                            withAnimation {
                                isShowing = false
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
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(selectedSection == section ? Color.black.opacity(0.3) : Color.clear)
                            .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal, 30)
                Spacer()
            }
            .safeAreaPadding(.top)
            .safeAreaPadding(.bottom)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedSection: .constant(.home))
}

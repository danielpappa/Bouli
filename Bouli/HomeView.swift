//
//  HomeView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack() {
                Text("bouli")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                CarouselImageView()
            }
            .safeAreaPadding(.bottom)
            .safeAreaPadding(.top)
        }
        .background(Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.9))
    }
}

struct CarouselImageView: View {
    let imageNames = ["home1", "home2", "home3"]
    @State private var currentImageIndex = 0
    @State private var showText = true
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $currentImageIndex) {
                    ForEach(imageNames.indices, id: \.self) { index in
                        ZStack {
                            Image(imageNames[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width * 0.95)
                                .cornerRadius(20)
                                .clipped()
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: 250)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
                        withAnimation(.easeInOut(duration: 0.3)) {
                            showText = false
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            currentImageIndex = (currentImageIndex + 1) % imageNames.count
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showText = true
                            }
                        }
                    }
                }
                Text("BOWL SANE\n & MOLTO DI PIÙ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .multilineTextAlignment(.center)
                    .opacity(showText ? 1.0 : 0.0)
                    .animation(.easeInOut(duration: 0.5), value: showText)
            }
        }
    }
}

#Preview {
    HomeView()
}

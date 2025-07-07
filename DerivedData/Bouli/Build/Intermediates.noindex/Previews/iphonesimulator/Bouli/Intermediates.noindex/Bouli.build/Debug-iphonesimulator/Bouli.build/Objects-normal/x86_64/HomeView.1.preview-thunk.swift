@_private(sourceFile: "HomeView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension OverviewCarouselView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 264)
        GeometryReader { geometry in
            ZStack {
                ScrollView(.horizontal, showsIndicators: __designTimeBoolean("#5668.[7].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                    HStack(alignment: .top, spacing: __designTimeInteger("#5668.[7].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: 15)) {
                        ForEach(sections) { section in
                            OverviewView(section: section)
                                .tag(section.id)
                                .frame(width: geometry.size.width * __designTimeFloat("#5668.[7].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[0]", fallback: 0.85) - __designTimeInteger("#5668.[7].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[1]", fallback: 15))
                                .frame(maxHeight: .infinity)
                        }
                    }
                    .scrollTargetLayout()
                    .scrollTargetBehavior(.paging)
                    .padding(.horizontal)
                }
                .frame(height: __designTimeInteger("#5668.[7].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 350))
            }
        }
        .frame(height: __designTimeInteger("#5668.[7].[2].property.[0].[0].modifier[0].arg[0].value", fallback: 350))
    
#sourceLocation()
    }
}

extension OverviewView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 212)
        VStack(alignment: .leading, spacing: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[1].value", fallback: 0)) {
            Image(section.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(height: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[0].modifier[3].arg[0].value", fallback: 150))
            VStack(alignment: .leading) {
                Text(section.title1)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                    .multilineTextAlignment(.leading)
                    .padding(.top, __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[0].modifier[4].arg[1].value", fallback: 15))
                Text(section.description1)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .frame(alignment: .top)
                Text(section.title2)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                    .multilineTextAlignment(.leading)
                    .padding(.top, __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[1].arg[1].value.[2].modifier[4].arg[1].value", fallback: 5))
                Text(section.description2)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .frame(alignment: .top)
            }
            .padding(.horizontal)
            Spacer(minLength: __designTimeInteger("#5668.[6].[1].property.[0].[0].arg[2].value.[2].arg[0].value", fallback: 0))
        }
        .cornerRadius(__designTimeInteger("#5668.[6].[1].property.[0].[0].modifier[0].arg[0].value", fallback: 20))
        .overlay(
            RoundedRectangle(cornerRadius: __designTimeInteger("#5668.[6].[1].property.[0].[0].modifier[1].arg[0].value.arg[0].value", fallback: 20))
                .stroke(Color.gray, lineWidth: __designTimeFloat("#5668.[6].[1].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[1].value", fallback: 0.25))
        )
    
#sourceLocation()
    }
}

extension HowItWorksView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 177)
        VStack {
            Image(section.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 60), height: __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 60))
            Text(section.title)
                .font(.headline)
                .foregroundColor(Color(red: __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255)))
                .padding(.top, __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[1].modifier[2].arg[1].value", fallback: 5))
            Text(section.description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.horizontal, __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[2].modifier[3].arg[1].value", fallback: 5))
                .frame(minHeight: __designTimeInteger("#5668.[4].[1].property.[0].[0].arg[0].value.[2].modifier[4].arg[0].value", fallback: 60), alignment: .top)
        }
        .padding()
        .cornerRadius(__designTimeInteger("#5668.[4].[1].property.[0].[0].modifier[1].arg[0].value", fallback: 10))
        .aspectRatio(__designTimeInteger("#5668.[4].[1].property.[0].[0].modifier[2].arg[0].value", fallback: 1), contentMode: .fit)
    
#sourceLocation()
    }
}

extension CarouselImageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 122)
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $currentImageIndex) {
                    ForEach(imageNames.indices, id: \.self) { index in
                        ZStack {
                            Image(imageNames[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width * __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0]", fallback: 0.95))
                                .cornerRadius(__designTimeInteger("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 20))
                                .clipped()
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: __designTimeInteger("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 250))
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value", fallback: 5.0), repeats: __designTimeBoolean("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value", fallback: true)) { timer in
                        withAnimation(.easeInOut(duration: __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[0].value.arg[0].value", fallback: 0.3))) {
                            showText = __designTimeBoolean("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].[0]", fallback: false)
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[0].value.[0]", fallback: 0.3)) {
                            currentImageIndex = (currentImageIndex + __designTimeInteger("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[0].[0]", fallback: 1)) % imageNames.count
                            withAnimation(.easeInOut(duration: __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[0].value.arg[0].value", fallback: 0.5))) {
                                showText = __designTimeBoolean("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[1].value.[0].[0]", fallback: true)
                            }
                        }
                    }
                }
                Text("BOWL SANE\n & MOLTO DI PIÙ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: __designTimeInteger("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 10))
                    .multilineTextAlignment(.center)
                    .opacity(showText ? __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[5].arg[0].value.then", fallback: 1.0) : __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[5].arg[0].value.else", fallback: 0.0))
                    .animation(.easeInOut(duration: __designTimeFloat("#5668.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[6].arg[0].value.arg[0].value", fallback: 0.5)), value: showText)
            }
        }
        .frame(height: __designTimeInteger("#5668.[2].[3].property.[0].[0].modifier[0].arg[0].value", fallback: 250))
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 25)
        ScrollView {
            VStack(spacing: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
                Text(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "bouli"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5))
                CarouselImageView()
                    .padding()
                
                VStack(spacing: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: 20)) {
                    Text(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "COME FUNZIONA"))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                    LazyVGrid(columns: columns, spacing: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[1].arg[1].value", fallback: 16)) {
                        ForEach(sections) { section in
                            HowItWorksView(section: section)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[1].modifier[1].arg[1].value", fallback: 20))
                }
                .background(Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 246)/__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 235)/__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 242)/__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255.0)))
                .safeAreaPadding(.bottom)
                .safeAreaPadding(.top)
                
                VStack(spacing: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[0].value", fallback: 20)) {
                    Text(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "LE NOSTRE BOWL"))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                    OverviewCarouselView()
                }
                .background(Color.white)
                .safeAreaPadding(.top)
                .safeAreaPadding(.bottom)
                
                VStack(spacing: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[0].value", fallback: 20)) {
                    Text(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].arg[0].value", fallback: "PICK UP"))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding(.top)
                    
                    ZStack(alignment: .bottomLeading) {
                        Image(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[1].arg[1].value.[0].arg[0].value", fallback: "pickup"))
                            .resizable()
                            .scaledToFill()
                            .clipped()
                        LinearGradient(
                                    gradient: Gradient(colors: [
                                        .black.opacity(__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[1].arg[1].value.[1].arg[0].value.arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.8)),
                                        .black.opacity(__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[1].arg[1].value.[1].arg[0].value.arg[0].value.[1].modifier[0].arg[0].value", fallback: 0.0))
                                    ]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                        VStack() {
                            Text(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[1].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Seleziona il punto di ritiro, il pasto, la confezione e la dimensione della porzione desiderata"))
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            Text(__designTimeString("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[1].arg[1].value.[2].arg[0].value.[1].arg[0].value", fallback: "Ordina tramite WhatsApp entro le 9:00, prendilo e... divertiti !"))
                                .font(.caption)
                                .foregroundColor(Color.white)
                                .padding()
                        }
                    }
                    .cornerRadius(__designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[1].modifier[0].arg[0].value", fallback: 20))
                    .padding(.horizontal)
                }
                .background(Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 246)/__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 235)/__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 242)/__designTimeFloat("#5668.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255.0)))
            }
            .safeAreaPadding(.top)
        }
        .background(
            GeometryReader { geometry in
                VStack(spacing: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[0].value", fallback: 0)) {
                    Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: 102)/__designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]", fallback: 127)/__designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[2].value.[0]", fallback: 54)/__designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].arg[3].value", fallback: 0.9))
                        .frame(height: geometry.size.height * __designTimeFloat("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0]", fallback: 0.6))
                    Color(red: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].arg[0].value.[0]", fallback: 246)/__designTimeFloat("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].arg[1].value.[0]", fallback: 235)/__designTimeFloat("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].arg[2].value.[0]", fallback: 242)/__designTimeFloat("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].arg[2].value.[1]", fallback: 255.0))
                        .frame(height: geometry.size.height * __designTimeFloat("#5668.[1].[2].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0]", fallback: 0.6))
                }
                .edgesIgnoringSafeArea(.all)
            }
        )
    
#sourceLocation()
    }
}

import struct Bouli.HomeView
import struct Bouli.CarouselImageView
import struct Bouli.HowItWorks
import struct Bouli.HowItWorksView
import struct Bouli.Overview
import struct Bouli.OverviewView
import struct Bouli.OverviewCarouselView
#Preview {
    HomeView()
}




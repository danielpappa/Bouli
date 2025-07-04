@_private(sourceFile: "HomeView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CarouselImageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 34)
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $currentImageIndex) {
                    ForEach(imageNames.indices, id: \.self) { index in
                        ZStack {
                            Image(imageNames[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width * __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0]", fallback: 0.95))
                                .cornerRadius(__designTimeInteger("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 20))
                                .clipped()
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: __designTimeInteger("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 250))
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value", fallback: 5.0), repeats: __designTimeBoolean("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value", fallback: true)) { timer in
                        withAnimation(.easeInOut(duration: __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[0].value.arg[0].value", fallback: 0.3))) {
                            showText = __designTimeBoolean("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].[0]", fallback: false)
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[0].value.[0]", fallback: 0.3)) {
                            currentImageIndex = (currentImageIndex + __designTimeInteger("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[0].[0]", fallback: 1)) % imageNames.count
                            withAnimation(.easeInOut(duration: __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[0].value.arg[0].value", fallback: 0.5))) {
                                showText = __designTimeBoolean("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[1].value.[0].[0]", fallback: true)
                            }
                        }
                    }
                }
                Text("BOWL SANE\n & MOLTO DI PIÙ")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: __designTimeInteger("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value", fallback: 10))
                    .multilineTextAlignment(.center)
                    .opacity(showText ? __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[5].arg[0].value.then", fallback: 1.0) : __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[5].arg[0].value.else", fallback: 0.0))
                    .animation(.easeInOut(duration: __designTimeFloat("#8489.[2].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[6].arg[0].value.arg[0].value", fallback: 0.5)), value: showText)
            }
        }
    
#sourceLocation()
    }
}

extension HomeView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/HomeView.swift", line: 12)
        ScrollView {
            VStack() {
                Text(__designTimeString("#8489.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "bouli"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: __designTimeInteger("#8489.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 5))
                CarouselImageView()
            }
            .safeAreaPadding(.bottom)
            .safeAreaPadding(.top)
        }
        .background(Color(red: __designTimeInteger("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#8489.[1].[0].property.[0].[0].modifier[0].arg[0].value.arg[3].value", fallback: 0.9)))
    
#sourceLocation()
    }
}

import struct Bouli.HomeView
import struct Bouli.CarouselImageView
#Preview {
    HomeView()
}




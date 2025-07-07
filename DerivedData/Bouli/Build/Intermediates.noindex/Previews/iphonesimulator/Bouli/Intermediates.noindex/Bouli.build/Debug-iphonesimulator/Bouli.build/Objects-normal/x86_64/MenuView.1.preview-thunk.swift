@_private(sourceFile: "MenuView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension PopUpOrderView {
    @_dynamicReplacement(for: parsePriceString(_:)) private func __preview__parsePriceString(_ priceString: String) -> Double {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 372)
        let cleanedString = priceString.replacingOccurrences(of: __designTimeString("#19512.[6].[7].[0].value.modifier[0].arg[0].value", fallback: "€"), with: __designTimeString("#19512.[6].[7].[0].value.modifier[0].arg[1].value", fallback: "")).trimmingCharacters(in: .whitespacesAndNewlines)
        return Double(cleanedString) ?? __designTimeFloat("#19512.[6].[7].[1].[0]", fallback: 0.0)
    
#sourceLocation()
    }
}

extension PopUpOrderView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 310)
        VStack(spacing: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[0].value", fallback: 15)) {
            Text(item.title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color(red: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                .multilineTextAlignment(.center)

            Text("Price: \(selectedPriceString)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Divider()

            HStack {
                Text(__designTimeString("#19512.[6].[6].property.[0].[0].arg[1].value.[3].arg[0].value.[0].arg[0].value", fallback: "Quantità:"))
                    .font(.subheadline)
                
                Spacer()
                
                Stepper(value: $amount, in: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[3].arg[0].value.[2].arg[1].value.[0]", fallback: 1)...__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[3].arg[0].value.[2].arg[1].value.[1]", fallback: 99)) {
                    Text("\(amount)")
                }
                .frame(width: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[3].arg[0].value.[2].modifier[0].arg[0].value", fallback: 120))
            }
            .padding(.horizontal)
            
            VStack(spacing: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[0].value", fallback: 5)) {
                Text(__designTimeString("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[0].arg[0].value", fallback: "Costo Totale:"))
                    .font(.callout)
                    .foregroundColor(.secondary)
                Text(String(format: __designTimeString("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].arg[0].value.arg[0].value", fallback: "€%.2f"), totalCost))
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
            }
            .padding(.vertical, __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[4].modifier[0].arg[1].value", fallback: 5))

            Divider()

            HStack(spacing: __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[6].arg[0].value", fallback: 15)) {
                Button(__designTimeString("#19512.[6].[6].property.[0].[0].arg[1].value.[6].arg[1].value.[0].arg[0].value", fallback: "Ordina")) {
                    print("Ordinato \(amount) di \(item.title) per \(String(format: __designTimeString("#19512.[6].[6].property.[0].[0].arg[1].value.[6].arg[1].value.[0].arg[1].value.[0].arg[0].value.[5].value.arg[0].value.arg[0].value", fallback: "€%.2f"), totalCost))")
                    dismiss()
                }

                Button(__designTimeString("#19512.[6].[6].property.[0].[0].arg[1].value.[6].arg[1].value.[1].arg[0].value", fallback: "Chiudi")) {
                    dismiss()
                }
            }
            .padding(.top, __designTimeInteger("#19512.[6].[6].property.[0].[0].arg[1].value.[6].modifier[0].arg[1].value", fallback: 10))
        }
        .padding(__designTimeInteger("#19512.[6].[6].property.[0].[0].modifier[0].arg[0].value", fallback: 20))
        .frame(width: UIScreen.main.bounds.width * __designTimeFloat("#19512.[6].[6].property.[0].[0].modifier[1].arg[0].value.[0]", fallback: 0.8))
        .background(Color.white)
        .cornerRadius(__designTimeInteger("#19512.[6].[6].property.[0].[0].modifier[3].arg[0].value", fallback: 20))
        .shadow(radius: __designTimeInteger("#19512.[6].[6].property.[0].[0].modifier[4].arg[0].value", fallback: 10))
        .onAppear {
            self.basePrice = parsePriceString(selectedPriceString)
        }
    
#sourceLocation()
    }
}

extension PopUpOrderView {
    @_dynamicReplacement(for: totalCost) private var __preview__totalCost: Double {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 306)
        return basePrice * Double(amount)
    
#sourceLocation()
    }
}

extension MenuItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 199)
        VStack(alignment: .leading, spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[1].value", fallback: 8)) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[1].value", fallback: 4)) {
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                    
                    Text(item.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[1].value", fallback: 4)) {
                    // Button for "Normale" price
                    Button(action: {
                        showingOrderDetails = __designTimeBoolean("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].[0]", fallback: true)
                    }) {
                        HStack(spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 5)) {
                            Text(__designTimeString("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Normale:"))
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text(item.priceSmall)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        .padding(__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 8))
                        .background(Color(red: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[3].value", fallback: 0.5)))
                        .cornerRadius(__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 8))
                    }
                    .sheet(isPresented: $showingOrderDetails) {
                        PopUpOrderView(
                            item: item,
                            selectedPriceString: item.priceSmall
                        )
                    }
                    
                    if let largePrice = item.priceLarge, !largePrice.isEmpty {
                        Button(action: {
                            showingOrderDetails = __designTimeBoolean("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[0].value.[0].[0]", fallback: true)
                        }) {
                            HStack(spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: 5)) {
                                Text(__designTimeString("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Grande:"))
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text(largePrice)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            .padding(__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 8))
                            .background(Color(red: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[3].value", fallback: 0.5)))
                            .cornerRadius(__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 8))
                        }
                        .sheet(isPresented: $showingOrderDetails) {
                            PopUpOrderView(
                                item: item,
                                selectedPriceString: largePrice
                            )
                        }
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
                
            HStack(spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[0].value", fallback: 8)) {
                ForEach(item.tags) { tag in
                    HStack(spacing: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: 4)) {
                        Image(systemName: tag.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 12), height: __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 12))
                            .foregroundColor(tag.color)
                        Text(tag.text)
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 4))
                    .padding(.horizontal, __designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 6))
                    .background(tag.color.opacity(__designTimeFloat("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                    .cornerRadius(__designTimeInteger("#19512.[5].[2].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5))
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(__designTimeInteger("#19512.[5].[2].property.[0].[0].modifier[2].arg[0].value", fallback: 20))
        .shadow(color: Color.black.opacity(__designTimeFloat("#19512.[5].[2].property.[0].[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.05)), radius: __designTimeInteger("#19512.[5].[2].property.[0].[0].modifier[3].arg[1].value", fallback: 5), x: __designTimeInteger("#19512.[5].[2].property.[0].[0].modifier[3].arg[2].value", fallback: 0), y: __designTimeInteger("#19512.[5].[2].property.[0].[0].modifier[3].arg[3].value", fallback: 2))
        .padding(.horizontal)
        
    
#sourceLocation()
    }
}

extension HighlightCarouselView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 150)
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $currentImageIndex) {
                    ForEach(highlightImages.indices, id: \.self) { index in
                        VStack(spacing: __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: 0)) {
                            HStack(spacing: __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 10)) {
                                Text(highlights[index])
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                Image(highlightImages[index])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 60), height: __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 60))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 40))
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 100))
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: __designTimeFloat("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value", fallback: 3.0), repeats: __designTimeBoolean("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value", fallback: true)) { timer in
                        withAnimation(.easeInOut(duration: __designTimeFloat("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[0].value.arg[0].value", fallback: 0.3))) {
                            showText = __designTimeBoolean("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].[0]", fallback: false)
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[0].value.[0]", fallback: 0.3)) {
                            currentImageIndex = (currentImageIndex + __designTimeInteger("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[0].[0]", fallback: 1)) % highlightImages.count
                            withAnimation(.easeInOut(duration: __designTimeFloat("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[0].value.arg[0].value", fallback: 0.3))) {
                                showText = __designTimeBoolean("#19512.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[1].value.[0].[0]", fallback: true)
                            }
                        }
                    }
                }
            }
        }
        .frame(height: __designTimeInteger("#19512.[4].[4].property.[0].[0].modifier[0].arg[0].value", fallback: 100))
    
#sourceLocation()
    }
}

extension MenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 76)
        NavigationStack {
            ScrollView {
                VStack(spacing: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
                    Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "bouli"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding(.bottom)
                    Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "IL TUO PRANZO SANO"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding(.horizontal)
                        .padding()
                    
                    HighlightCarouselView()
                        .padding()
                    
                    Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].arg[0].value", fallback: "MENÙ"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding()
                    
                    ForEach(menuItems) { item in
                        MenuItemView(item: item)
                            .padding(.top)
                    }
                    
                    Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].arg[0].value", fallback: "Extra Ingredients"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding()
                    
                    VStack(alignment: .leading, spacing: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[1].value", fallback: 10)) {
                        HStack {
                            Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "pane extra"))
                            Spacer()
                            Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[0].arg[0].value.[2].arg[0].value", fallback: "€0.50"))
                        }
                        HStack {
                            Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[1].arg[0].value.[0].arg[0].value", fallback: "condimento extra"))
                            Spacer()
                            Text(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[1].arg[0].value.[2].arg[0].value", fallback: "€0.50"))
                        }
                    }
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .padding(.bottom, __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].modifier[3].arg[1].value", fallback: 20))
                }
            }
            .navigationTitle(__designTimeString("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: ""))
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(red: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 246)/__designTimeFloat("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 235)/__designTimeFloat("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 242)/__designTimeFloat("#19512.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255.0)).edgesIgnoringSafeArea(.all))
            .safeAreaPadding(.top)
            .safeAreaPadding(.bottom)
        }
    
#sourceLocation()
    }
}

import struct Bouli.MenuItem
import struct Bouli.Tag
import struct Bouli.MenuView
import struct Bouli.HighlightCarouselView
import struct Bouli.MenuItemView
import struct Bouli.PopUpOrderView
#Preview {
    MenuView()
}




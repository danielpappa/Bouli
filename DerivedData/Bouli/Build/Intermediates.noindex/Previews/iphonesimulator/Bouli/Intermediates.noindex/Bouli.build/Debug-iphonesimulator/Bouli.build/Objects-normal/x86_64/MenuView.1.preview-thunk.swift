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
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 375)
        let cleanedString = priceString.replacingOccurrences(of: __designTimeString("#73.[6].[8].[0].value.modifier[0].arg[0].value", fallback: "€"), with: __designTimeString("#73.[6].[8].[0].value.modifier[0].arg[1].value", fallback: "")).trimmingCharacters(in: .whitespacesAndNewlines)
        return Double(cleanedString) ?? __designTimeFloat("#73.[6].[8].[1].[0]", fallback: 0.0)
    
#sourceLocation()
    }
}

extension PopUpOrderView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 315)
        NavigationView {
            VStack(spacing: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 15)) {
                
                Text("\(item.title) \(selectedSize)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                    .multilineTextAlignment(.center)
                
                Text("Prezzo: \(selectedPriceString)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    Text(__designTimeString("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Quantità:"))
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Stepper(value: $amount, in: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[1].value.[0]", fallback: 1)...__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[1].value.[1]", fallback: 99)) {
                        Text("\(amount)")
                    }
                    .frame(width: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].modifier[0].arg[0].value", fallback: 120))
                }
                .padding(.horizontal)
                
                VStack(spacing: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[0].value", fallback: 5)) {
                    Text(__designTimeString("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "Costo Totale:"))
                        .font(.callout)
                        .foregroundColor(.secondary)
                    Text(String(format: __designTimeString("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].arg[0].value.arg[0].value", fallback: "€%.2f"), totalCost))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                }
                .padding(.vertical, __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[3].modifier[0].arg[1].value", fallback: 5))
                
                Button(__designTimeString("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[0].value", fallback: "Aggiungi")) {
                    print("Ordinato \(amount) di \(item.title) \(selectedSize) per \(String(format: __designTimeString("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].arg[1].value.[0].arg[0].value.[7].value.arg[0].value.arg[0].value", fallback: "€%.2f"), totalCost))")
                    dismiss()
                }
                .padding()
                .padding(.horizontal)
                .background(Color(red: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                .foregroundColor(.white)
                .cornerRadius(__designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[4].modifier[4].arg[0].value", fallback: 10))
                
                Spacer()
            }
            .padding(.horizontal, __designTimeInteger("#73.[6].[7].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 20))
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(__designTimeString("#73.[6].[7].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: "Dettagli Ordine"))
            .navigationBarBackButtonHidden(__designTimeBoolean("#73.[6].[7].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: true))
            .onAppear {
                self.basePrice = parsePriceString(selectedPriceString)
            }
        }
    
#sourceLocation()
    }
}

extension PopUpOrderView {
    @_dynamicReplacement(for: totalCost) private var __preview__totalCost: Double {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 311)
        return basePrice * Double(amount)
    
#sourceLocation()
    }
}

extension MenuItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 201)
        VStack(alignment: .leading, spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[1].value", fallback: 8)) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[1].value", fallback: 4)) {
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding(.top)
                    
                    Text(item.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[1].value", fallback: 4)) {
                    Button(action: {
                        showingOrderDetails = __designTimeBoolean("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[0].[0]", fallback: true)
                        currentPriceString = item.priceSmall
                        currentSelectedSize = __designTimeString("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[0].value.[2].[0]", fallback: "Normale")
                    }) {
                        HStack(spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 5)) {
                            Text(__designTimeString("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Normale:"))
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text(item.priceSmall)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        .padding(__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 8))
                        .background(Color(red: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[3].value", fallback: 0.5)))
                        .cornerRadius(__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 8))
                    }
                    
                    if let largePrice = item.priceLarge, !largePrice.isEmpty {
                        Button(action: {
                            showingOrderDetails = __designTimeBoolean("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[0].value.[0].[0]", fallback: true)
                            currentPriceString = largePrice
                            currentSelectedSize = __designTimeString("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[0].value.[2].[0]", fallback: "Grande")
                        }) {
                            HStack(spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].arg[0].value", fallback: 5)) {
                                Text(__designTimeString("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Grande:"))
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text(largePrice)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            .padding(__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 8))
                            .background(Color(red: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[1].arg[0].value.arg[3].value", fallback: 0.5)))
                            .cornerRadius(__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[0].arg[1].value.[2].arg[2].value.[1].[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 8))
                        }
                    }
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .padding(.top)
                }
                .sheet(isPresented: $showingOrderDetails) {
                    PopUpOrderView(
                        item: item,
                        selectedPriceString: currentPriceString,
                        selectedSize: currentSelectedSize
                    )
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.visible)
                }
            }
                
            HStack(spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[0].value", fallback: 8)) {
                ForEach(item.tags) { tag in
                    HStack(spacing: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: 4)) {
                        Image(systemName: tag.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 12), height: __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 12))
                            .foregroundColor(tag.color)
                        Text(tag.text)
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 4))
                    .padding(.horizontal, __designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 6))
                    .background(tag.color.opacity(__designTimeFloat("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.1)))
                    .cornerRadius(__designTimeInteger("#73.[5].[4].property.[0].[0].arg[2].value.[1].arg[1].value.[0].arg[1].value.[0].modifier[3].arg[0].value", fallback: 5))
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(__designTimeInteger("#73.[5].[4].property.[0].[0].modifier[2].arg[0].value", fallback: 20))
        .shadow(color: Color.black.opacity(__designTimeFloat("#73.[5].[4].property.[0].[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.05)), radius: __designTimeInteger("#73.[5].[4].property.[0].[0].modifier[3].arg[1].value", fallback: 5), x: __designTimeInteger("#73.[5].[4].property.[0].[0].modifier[3].arg[2].value", fallback: 0), y: __designTimeInteger("#73.[5].[4].property.[0].[0].modifier[3].arg[3].value", fallback: 2))
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
                        VStack(spacing: __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: 0)) {
                            HStack(spacing: __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value", fallback: 10)) {
                                Text(highlights[index])
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                Image(highlightImages[index])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 60), height: __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 60))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 40))
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: 100))
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: __designTimeFloat("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value", fallback: 5.0), repeats: __designTimeBoolean("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[1].value", fallback: true)) { timer in
                        withAnimation(.easeInOut(duration: __designTimeFloat("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[0].value.arg[0].value", fallback: 0.3))) {
                            showText = __designTimeBoolean("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].[0]", fallback: false)
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[0].value.[0]", fallback: 0.3)) {
                            currentImageIndex = (currentImageIndex + __designTimeInteger("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[0].[0]", fallback: 1)) % highlightImages.count
                            withAnimation(.easeInOut(duration: __designTimeFloat("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[0].value.arg[0].value", fallback: 0.3))) {
                                showText = __designTimeBoolean("#73.[4].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[1].value.[1].arg[1].value.[0].[0]", fallback: true)
                            }
                        }
                    }
                }
            }
        }
        .frame(height: __designTimeInteger("#73.[4].[4].property.[0].[0].modifier[0].arg[0].value", fallback: 100))
    
#sourceLocation()
    }
}

extension MenuView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/MenuView.swift", line: 76)
        NavigationStack {
            ScrollView {
                VStack(spacing: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
                    Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "bouli"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding(.bottom)
                    Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "IL TUO PRANZO SANO"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding(.horizontal)
                        .padding()
                    
                    HighlightCarouselView()
                        .padding()
                    
                    Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].arg[0].value", fallback: "MENÙ"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding()
                    
                    ForEach(menuItems) { item in
                        MenuItemView(item: item)
                            .padding(.top)
                    }
                    
                    Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].arg[0].value", fallback: "Extra Ingredients"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[5].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        .padding()
                    
                    VStack(alignment: .leading, spacing: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[1].value", fallback: 10)) {
                        HStack {
                            Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[0].arg[0].value.[0].arg[0].value", fallback: "pane extra"))
                            Spacer()
                            Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[0].arg[0].value.[2].arg[0].value", fallback: "€0.50"))
                        }
                        HStack {
                            Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[1].arg[0].value.[0].arg[0].value", fallback: "condimento extra"))
                            Spacer()
                            Text(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].arg[2].value.[1].arg[0].value.[2].arg[0].value", fallback: "€0.50"))
                        }
                    }
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .padding(.bottom, __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[6].modifier[3].arg[1].value", fallback: 20))
                }
            }
            .navigationTitle(__designTimeString("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: ""))
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(red: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 246)/__designTimeFloat("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255.0), green: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 235)/__designTimeFloat("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255.0), blue: __designTimeInteger("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 242)/__designTimeFloat("#73.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255.0)).edgesIgnoringSafeArea(.all))
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




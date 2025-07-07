//
//  MenuView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let description: String
    let priceSmall: String
    let priceLarge: String?
    let tags: [Tag]
}

struct Tag: Identifiable {
    let id = UUID()
    let imageName: String
    let text: String
    let color: Color
}

struct MenuView: View {
    let menuItems: [MenuItem] = [
        MenuItem(
            title: "MOIDL",
            imageName: "moidl",
            description: "Mix di lattuga, grano saraceno, fagioli cannellini, cetrioli, carote, pomodorini, fragole, uovo bio sodo, erba cipollina, semi di girasole, condimento al balsamico\n\nAlternativa vegana: crema di fagioli cannellini\n\nIncl. due fette di pane",
            priceSmall: "€9.50",
            priceLarge: "€10.50",
            tags: [
                Tag(imageName: "leaf.fill", text: "Vegetariano", color: .green),
                Tag(imageName: "frying.pan.fill", text: "Uova", color: .blue)
            ]
        ),
        MenuItem(
            title: "BEPPE",
            imageName: "beppe",
            description: "Orzo, ceci, peperonata con peperoni, zucchine, melanzane e olive\n\nNota: viene consegnato freddo e può essere riscaldato in microonde",
            priceSmall: "€9.50",
            priceLarge: "€10.50",
            tags: [
                Tag(imageName: "allergens.fill", text: "Glutine", color: .green)
            ]
        ),
        MenuItem(
            title: "ROSAMINT",
            imageName: "rosamint",
            description: "Mix di lattuga, cous cous, lenticchie, melanzane al forno, cappuccio rosso, carote al forno, patties di piselli al forno, sesamo, drizzle di yoghurt, condimento al prezzemolo e tahin",
            priceSmall: "€9.50",
            priceLarge: "€10.50",
            tags: [
                Tag(imageName: "leaf.fill", text: "Vegetariano", color: .green),
                Tag(imageName: "milk.fill", text: "Lattosio", color: .red),
                Tag(imageName: "allergens.fill", text: "Glutine", color: .blue),
                Tag(imageName: "dots.bubble.extended.fill", text: "Sesamo", color: .gray)
            ]
        ),
        MenuItem(
            title: "WRAP OF THE WEEK",
            imageName: "wrap",
            description: "Tortilla, mix di lattuga, pesto di anacardi, fagioli cannellini, cappuccio rosso, carote al forno, pomodorini",
            priceSmall: "€8.00", 
            priceLarge: nil,
            tags: [
                Tag(imageName: "leaf.fill", text: "Vegan", color: .green)
            ]
        )
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    Text("bouli")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        .padding(.bottom)
                    Text("IL TUO PRANZO SANO")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        .padding(.horizontal)
                        .padding()
                    
                    HighlightCarouselView()
                        .padding()
                    
                    Text("MENÙ")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        .padding()
                    
                    ForEach(menuItems) { item in
                        MenuItemView(item: item)
                            .padding(.top)
                    }
                    
                    Text("Extra Ingredients")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("pane extra")
                            Spacer()
                            Text("€0.50")
                        }
                        HStack {
                            Text("condimento extra")
                            Spacer()
                            Text("€0.50")
                        }
                    }
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(red: 246/255.0, green: 235/255.0, blue: 242/255.0).edgesIgnoringSafeArea(.all))
            .safeAreaPadding(.top)
            .safeAreaPadding(.bottom)
        }
    }
}

struct HighlightCarouselView: View {
    let highlights = [
        "Nuovi pasti\nogni settimana", "Consegna gratuita\nMinimo d'ordine di 3 pasti", "Imballaggio & consegna\nsostenibile"
    ]
    let highlightImages = [
        "CFScegliere", "CFConsegna", "CFConfezione"
    ]
    
    @State private var currentImageIndex = 0
    @State private var showText = true
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $currentImageIndex) {
                    ForEach(highlightImages.indices, id: \.self) { index in
                        VStack(spacing: 0) {
                            HStack(spacing: 10) {
                                Text(highlights[index])
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                Image(highlightImages[index])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 40)
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(height: 100)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
                        withAnimation(.easeInOut(duration: 0.3)) {
                            showText = false
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            currentImageIndex = (currentImageIndex + 1) % highlightImages.count
                            withAnimation(.easeInOut(duration: 0.3)) {
                                showText = true
                            }
                        }
                    }
                }
            }
        }
        .frame(height: 100)
    }
}

struct MenuItemView: View {
    let item: MenuItem
    
    @State private var showingOrderDetails = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                    
                    Text(item.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 4) {
                    // Button for "Normale" price
                    Button(action: {
                        showingOrderDetails = true
                    }) {
                        HStack(spacing: 5) {
                            Text("Normale:")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text(item.priceSmall)
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        .padding(8)
                        .background(Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.5))
                        .cornerRadius(8)
                    }
                    .sheet(isPresented: $showingOrderDetails) {
                        PopUpOrderView(
                            item: item,
                            selectedPriceString: item.priceSmall
                        )
                    }
                    
                    if let largePrice = item.priceLarge, !largePrice.isEmpty {
                        Button(action: {
                            showingOrderDetails = true
                        }) {
                            HStack(spacing: 5) {
                                Text("Grande:")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text(largePrice)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            .padding(8)
                            .background(Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.5))
                            .cornerRadius(8)
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
                
            HStack(spacing: 8) {
                ForEach(item.tags) { tag in
                    HStack(spacing: 4) {
                        Image(systemName: tag.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .foregroundColor(tag.color)
                        Text(tag.text)
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, 4)
                    .padding(.horizontal, 6)
                    .background(tag.color.opacity(0.1))
                    .cornerRadius(5)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
        
    }
}

struct PopUpOrderView: View {
    let item: MenuItem
    let selectedPriceString: String

    @Environment(\.dismiss) var dismiss
    @State private var amount: Int = 1
    @State private var basePrice: Double = 0.0

    var totalCost: Double {
        return basePrice * Double(amount)
    }

    var body: some View {
        VStack(spacing: 15) {
            Text(item.title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                .multilineTextAlignment(.center)

            Text("Price: \(selectedPriceString)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Divider()

            HStack {
                Text("Quantità:")
                    .font(.subheadline)
                
                Spacer()
                
                Stepper(value: $amount, in: 1...99) {
                    Text("\(amount)")
                }
                .frame(width: 120)
            }
            .padding(.horizontal)
            
            VStack(spacing: 5) {
                Text("Costo Totale:")
                    .font(.callout)
                    .foregroundColor(.secondary)
                Text(String(format: "€%.2f", totalCost))
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
            }
            .padding(.vertical, 5)

            Divider()

            HStack(spacing: 15) {
                Button("Ordina") {
                    print("Ordinato \(amount) di \(item.title) per \(String(format: "€%.2f", totalCost))")
                    dismiss()
                }

                Button("Chiudi") {
                    dismiss()
                }
            }
            .padding(.top, 10)
        }
        .padding(20)
        .frame(width: UIScreen.main.bounds.width * 0.8)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .onAppear {
            self.basePrice = parsePriceString(selectedPriceString)
        }
    }

    private func parsePriceString(_ priceString: String) -> Double {
        let cleanedString = priceString.replacingOccurrences(of: "€", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
        return Double(cleanedString) ?? 0.0
    }
}

#Preview {
    MenuView()
}

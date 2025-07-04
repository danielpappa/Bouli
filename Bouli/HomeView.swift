//
//  HomeView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct HomeView: View {
    
    let sections: [HowItWorks] = [
    HowItWorks(imageName: "CFContattaci", title: "CONTATTACI", description: "Lasciateci i vostri recapiti e organizzeremo appuntamenti settimanali per le vostre consegne di insalata."),
    HowItWorks(imageName: "CFScegliere", title: "SCEGLIERE", description: "Scegliete i vostri piatti dal nostro menu settimanale entro le 09:00 del giorno di consegna concordato (per ordini occasionali, ordina il giorno prima)."),
    HowItWorks(imageName: "CFConfezione", title: "CONFEZIONE", description: "Imballaggi monouso compostabili o le nostre bowl riutilizzabili: decidete voi!"),
    HowItWorks(imageName: "CFConsegna", title: "CONSEGNA", description: "Ricevete il vostro pranzo in tempo e a impatto zero sul clima. Il pagamento può essere effettuato  alla consegna in contanti, con carta oppure in anticipo tramite link.")
    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Text("bouli")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                CarouselImageView()
                    .padding()
                
                VStack(spacing: 20) {
                    Text("Come Funziona")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(sections) { section in
                            HowItWorksView(section: section)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                .background(Color(red: 246/255.0, green: 235/255.0, blue: 242/255.0))
                .safeAreaPadding(.bottom)
                .safeAreaPadding(.top)
            }
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
        .frame(height: 250)
    }
}

struct HowItWorks: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

struct HowItWorksView: View {
    let section: HowItWorks
    
    var body: some View {
        VStack {
            Image(section.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Text(section.title)
                .font(.headline)
                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                .padding(.top, 5)
            Text(section.description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.horizontal, 5)
                .frame(minHeight: 60, alignment: .top)
        }
        .padding()
        .cornerRadius(10)
        .shadow(radius: 5)
        .aspectRatio(1, contentMode: .fit)
    }
}

#Preview {
    HomeView()
}

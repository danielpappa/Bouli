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
                    Text("COME FUNZIONA")
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
                
                VStack(spacing: 20) {
                    Text("LE NOSTRE BOWL")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                    OverviewCarouselView()
                }
                .background(Color.white)
                .safeAreaPadding(.top)
                .safeAreaPadding(.bottom)
                
                VStack(spacing: 20) {
                    Text("PICK UP")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        .padding(.top)
                    
                    ZStack(alignment: .bottomLeading) {
                        Image("pickup")
                            .resizable()
                            .scaledToFill()
                            .clipped()
                        LinearGradient(
                                    gradient: Gradient(colors: [
                                        .black.opacity(0.8),
                                        .black.opacity(0.0)
                                    ]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                        VStack() {
                            Text("Seleziona il punto di ritiro, il pasto, la confezione e la dimensione della porzione desiderata")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            Text("Ordina tramite WhatsApp entro le 9:00, prendilo e... divertiti !")
                                .font(.caption)
                                .foregroundColor(Color.white)
                                .padding()
                        }
                    }
                    .cornerRadius(20)
                    .padding(.horizontal)
                }
                .background(Color(red: 246/255.0, green: 235/255.0, blue: 242/255.0))
            }
            .safeAreaPadding(.top)
        }
        .background(
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.9)
                        .frame(height: geometry.size.height * 0.6)
                    Color(red: 246/255.0, green: 235/255.0, blue: 242/255.0)
                        .frame(height: geometry.size.height * 0.6)
                }
                .edgesIgnoringSafeArea(.all)
            }
        )
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
        .aspectRatio(1, contentMode: .fit)
    }
}

struct Overview: Identifiable {
    let id = UUID()
    let imageName: String
    let title1: String
    let description1: String
    let title2: String
    let description2: String
}

struct OverviewView: View {
    let section: Overview
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(section.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(height: 150)
            VStack(alignment: .leading) {
                Text(section.title1)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 15)
                Text(section.description1)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .frame(alignment: .top)
                Text(section.title2)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 5)
                Text(section.description2)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .frame(alignment: .top)
            }
            .padding(.horizontal)
            Spacer(minLength: 0)
        }
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 0.25)
        )
    }
}

struct OverviewCarouselView: View {
    let sections: [Overview] = [
        Overview(imageName: "home1", title1: "Addio, ai morsi della fame!", description1: "Carboidrati prevalentemente complessi garantiscono un livello constante di zucchero nel sangue.", title2: "Lattughe ed ortaggi", description2: "che si presentano con un carico extra di vitamine e minerali."),
        Overview(imageName: "home2", title1: "Ancora più verdure?", description1: "Sì! Perché un piatto non può mai essere troppo sano! ", title2: "E per un finale agrodolce", description2: "frutta e bacche di bosco di stagione."),
        Overview(imageName: "home3", title1: "Noci e semi", description1: "contengono preziosi acidi grassi essenziali, proteine e minerali.", title2: "Condimenti cremosi e colorati", description2: "da versare, mescolare, ma soprattutto, da gustare!"),
        Overview(imageName: "home3", title1: "Fibre alimentari", description1: "che troviamo nelle verdure, facilitano la digestione e non solo.", title2: "Composizione di aminoacidi ottima!", description2: "Grazie alla miscela di cereali e legumi.")
    ]
    
    @State private var currentImageIndex = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 15) {
                        ForEach(sections) { section in
                            OverviewView(section: section)
                                .tag(section.id)
                                .frame(width: geometry.size.width * 0.85 - 15)
                                .frame(maxHeight: .infinity)
                        }
                    }
                    .scrollTargetLayout()
                    .scrollTargetBehavior(.paging)
                    .padding(.horizontal)
                }
                .frame(height: 350)
            }
        }
        .frame(height: 350)
    }
}

#Preview {
    HomeView()
}

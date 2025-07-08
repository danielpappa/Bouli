//
//  OrdersView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI
import MapKit // Import MapKit for the Map view

struct Order: Identifiable {
    let id = UUID()
    let date: String
    let total: String
    let status: String
    let items: [String]
    let deliveryLocation: CLLocationCoordinate2D?
    let estimatedArrivalTime: String?
}

struct OrdersView: View {
    let upcomingOrders: [Order] = [
        Order(date: "Today, 8:30 AM", total: "€25.50", status: "In Preparazione", items: ["MOIDL"], deliveryLocation: CLLocationCoordinate2D(latitude: 46.497331, longitude: 11.355006), estimatedArrivalTime: "12:45 PM"),
        Order(date: "Today, 8:30 AM", total: "€25.50", status: "In Preparazione", items: ["WRAP OF THE WEEK"], deliveryLocation: CLLocationCoordinate2D(latitude: 46.497331, longitude: 11.355006), estimatedArrivalTime: "12:45 PM")
    ]
    
    // Past orders moved to a separate data source/view
    // This data will be passed to OrderHistoryView
    let allPastOrders: [Order] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Text("bouli")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                List {
                    if let currentOrder = upcomingOrders.first {
                        Section {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("IN CONSEGNA...")
                                    .font(.headline)
                                    .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                                
                                Map(initialPosition: .region(MKCoordinateRegion(center: currentOrder.deliveryLocation ?? CLLocationCoordinate2D(latitude: 45.4642, longitude: 9.1900), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))) {
                                    if let location = currentOrder.deliveryLocation {
                                        Marker("Pickup Location", coordinate: location)
                                    }
                                }
                                .frame(height: 200)
                                .cornerRadius(10)
                                
                                if let eta = currentOrder.estimatedArrivalTime {
                                    Text("ETA: \(eta)")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                    }
                    
                    if !upcomingOrders.isEmpty {
                        Section(header: Text("IN CONSEGNA PER OGGI").font(.headline)) {
                            ForEach(upcomingOrders) { order in
                                NavigationLink(destination: OrderDetailView(order: order)) {
                                    CurrentOrderRow(order: order) // Using a new row type for current orders
                                }
                            }
                        }
                    } else {
                        Text("NESSUN ORDINE EFFETUATO.")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    Section {
                        NavigationLink(destination: Text("Order History View")) {
                            Label("Vedi Ordini Passati", systemImage: "clock.arrow.circlepath")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .scrollContentBackground(.hidden)
                .background(Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.3)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .padding(.top)
            }
            .safeAreaPadding(.top)
            .safeAreaPadding(.bottom)
        }
    }
}

struct CurrentOrderRow: View {
    let order: Order
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(order.items.joined(separator: ", "))
                .font(.headline)
                .fontWeight(.bold)
            Text("Stato: \(order.status)")
                .font(.subheadline)
                .foregroundColor(order.status == "Consegnato" ? Color(red: 102/255, green: 127/255, blue: 54/255) : .orange)
        }
        .padding(.vertical, 5)
    }
}


struct OrderDetailView: View {
    let order: Order
    
    var body: some View {
        List {
            Section(header: Text("Dettagli Ordine").font(.headline)) {
                HStack {
                    Text("Data")
                    Spacer()
                    Text(order.date)
                }
                HStack {
                    Text("Totale")
                    Spacer()
                    Text(order.total)
                }
                HStack {
                    Text("Stato")
                    Spacer()
                    Text(order.status)
                        .foregroundColor(order.status == "Consegnato" ? .green : .orange)
                }
            }
            
            Section(header: Text("Articoli").font(.headline)) {
                ForEach(order.items, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .navigationTitle("Ordine #\(String(order.id.uuidString.prefix(4)))")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background(Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.3))
        .safeAreaPadding(.top)
        .safeAreaPadding(.bottom)
    }
}

#Preview {
    OrdersView()
}


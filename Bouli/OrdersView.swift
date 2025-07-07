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
        Order(date: "Today, 8:30 AM", total: "€25.50", status: "Preparing", items: ["MOIDL"], deliveryLocation: CLLocationCoordinate2D(latitude: 46.497331, longitude: 11.355006), estimatedArrivalTime: "12:45 PM"),
        Order(date: "Today, 8:30 AM", total: "€25.50", status: "Preparing", items: ["WRAP OF THE WEEK"], deliveryLocation: CLLocationCoordinate2D(latitude: 46.497331, longitude: 11.355006), estimatedArrivalTime: "12:45 PM")
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
                                Text("Delivery in Progress")
                                    .font(.headline)
                                    .foregroundColor(.orange)
                                
                                Map(initialPosition: .region(MKCoordinateRegion(center: currentOrder.deliveryLocation ?? CLLocationCoordinate2D(latitude: 45.4642, longitude: 9.1900), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))) {
                                    if let location = currentOrder.deliveryLocation {
                                        Marker("Pickup Location", coordinate: location)
                                    }
                                }
                                .frame(height: 200)
                                .cornerRadius(10)
                                
                                if let eta = currentOrder.estimatedArrivalTime {
                                    Text("Estimated Arrival: \(eta)")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                    }
                    
                    if !upcomingOrders.isEmpty {
                        Section(header: Text("Current Orders").font(.headline)) {
                            ForEach(upcomingOrders) { order in
                                NavigationLink(destination: OrderDetailView(order: order)) {
                                    CurrentOrderRow(order: order) // Using a new row type for current orders
                                }
                            }
                        }
                    } else {
                        Text("No current orders.")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    Section {
                        NavigationLink(destination: Text("Order History View")) {
                            Label("View Order History", systemImage: "clock.arrow.circlepath")
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
            Text("Status: \(order.status)")
                .font(.subheadline)
                .foregroundColor(order.status == "Delivered" ? .green : .orange)
        }
        .padding(.vertical, 5)
    }
}


struct OrderDetailView: View {
    let order: Order
    
    var body: some View {
        List {
            Section(header: Text("Order Details").font(.headline)) {
                HStack {
                    Text("Date")
                    Spacer()
                    Text(order.date)
                }
                HStack {
                    Text("Total")
                    Spacer()
                    Text(order.total)
                }
                HStack {
                    Text("Status")
                    Spacer()
                    Text(order.status)
                        .foregroundColor(order.status == "Delivered" ? .green : .orange)
                }
            }
            
            Section(header: Text("Items").font(.headline)) {
                ForEach(order.items, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .navigationTitle("Order #\(String(order.id.uuidString.prefix(4)))")
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


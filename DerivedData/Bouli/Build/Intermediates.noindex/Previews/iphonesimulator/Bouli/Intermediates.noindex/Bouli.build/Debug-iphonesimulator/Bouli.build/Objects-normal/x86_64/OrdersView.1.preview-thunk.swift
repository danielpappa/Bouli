@_private(sourceFile: "OrdersView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI
import MapKit

extension OrderDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/OrdersView.swift", line: 118)
        List {
            Section(header: Text(__designTimeString("#7173.[5].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Dettagli Ordine")).font(.headline)) {
                HStack {
                    Text(__designTimeString("#7173.[5].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "Data"))
                    Spacer()
                    Text(order.date)
                }
                HStack {
                    Text(__designTimeString("#7173.[5].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].arg[0].value", fallback: "Totale"))
                    Spacer()
                    Text(order.total)
                }
                HStack {
                    Text(__designTimeString("#7173.[5].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value", fallback: "Stato"))
                    Spacer()
                    Text(order.status)
                        .foregroundColor(order.status == __designTimeString("#7173.[5].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].modifier[0].arg[0].value.if.[0]", fallback: "Consegnato") ? .green : .orange)
                }
            }
            
            Section(header: Text(__designTimeString("#7173.[5].[1].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Articoli")).font(.headline)) {
                ForEach(order.items, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .navigationTitle("Ordine #\(String(order.id.uuidString.prefix(__designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[0].arg[0].value.[1].value.arg[0].value.arg[0].value.modifier[0].arg[0].value", fallback: 4))))")
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
        .background(Color(red: __designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#7173.[5].[1].property.[0].[0].modifier[3].arg[0].value.arg[3].value", fallback: 0.3)))
        .safeAreaPadding(.top)
        .safeAreaPadding(.bottom)
    
#sourceLocation()
    }
}

extension CurrentOrderRow {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/OrdersView.swift", line: 101)
        VStack(alignment: .leading, spacing: __designTimeInteger("#7173.[4].[1].property.[0].[0].arg[1].value", fallback: 5)) {
            Text(order.items.joined(separator: __designTimeString("#7173.[4].[1].property.[0].[0].arg[2].value.[0].arg[0].value.modifier[0].arg[0].value", fallback: ", ")))
                .font(.headline)
                .fontWeight(.bold)
            Text("Stato: \(order.status)")
                .font(.subheadline)
                .foregroundColor(order.status == __designTimeString("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.if.[0]", fallback: "Consegnato") ? Color(red: __designTimeInteger("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.then.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.then.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.then.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.then.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.then.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#7173.[4].[1].property.[0].[0].arg[2].value.[1].modifier[1].arg[0].value.then.arg[2].value.[1]", fallback: 255)) : .orange)
        }
        .padding(.vertical, __designTimeInteger("#7173.[4].[1].property.[0].[0].modifier[0].arg[1].value", fallback: 5))
    
#sourceLocation()
    }
}

extension OrdersView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/OrdersView.swift", line: 32)
        NavigationStack {
            VStack(spacing: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
                Text(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "bouli"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255)))
                List {
                    if let currentOrder = upcomingOrders.first {
                        Section {
                            VStack(alignment: .leading, spacing: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[1].value", fallback: 10)) {
                                Text(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value", fallback: "IN CONSEGNA..."))
                                    .font(.headline)
                                    .foregroundColor(Color(red: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value.arg[2].value.[1]", fallback: 255)))
                                
                                Map(initialPosition: .region(MKCoordinateRegion(center: currentOrder.deliveryLocation ?? CLLocationCoordinate2D(latitude: __designTimeFloat("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.arg[0].value.arg[0].value.[0]", fallback: 45.4642), longitude: __designTimeFloat("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.arg[0].value.arg[0].value.[1]", fallback: 9.1900)), span: MKCoordinateSpan(latitudeDelta: __designTimeFloat("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.arg[0].value.arg[1].value.arg[0].value", fallback: 0.05), longitudeDelta: __designTimeFloat("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.arg[0].value.arg[1].value.arg[1].value", fallback: 0.05))))) {
                                    if let location = currentOrder.deliveryLocation {
                                        Marker(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].[0].[0].arg[0].value", fallback: "Pickup Location"), coordinate: location)
                                    }
                                }
                                .frame(height: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[0].value", fallback: 200))
                                .cornerRadius(__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[1].arg[0].value", fallback: 10))
                                
                                if let eta = currentOrder.estimatedArrivalTime {
                                    Text("ETA: \(eta)")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                    }
                    
                    if !upcomingOrders.isEmpty {
                        Section(header: Text(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[1].[0].[0].arg[0].value.arg[0].value", fallback: "IN CONSEGNA PER OGGI")).font(.headline)) {
                            ForEach(upcomingOrders) { order in
                                NavigationLink(destination: OrderDetailView(order: order)) {
                                    CurrentOrderRow(order: order) // Using a new row type for current orders
                                }
                            }
                        }
                    } else {
                        Text(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[1].[1].[0].arg[0].value", fallback: "NESSUN ORDINE EFFETUATO."))
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    Section {
                        NavigationLink(destination: Text(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Order History View"))) {
                            Label(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Vedi Ordini Passati"), systemImage: __designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "clock.arrow.circlepath"))
                                .foregroundColor(Color(red: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle(__designTimeString("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: ""))
                .navigationBarTitleDisplayMode(.inline)
                .scrollContentBackground(.hidden)
                .background(Color(red: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#7173.[3].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[4].arg[0].value.arg[3].value", fallback: 0.3))).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .padding(.top)
            }
            .safeAreaPadding(.top)
            .safeAreaPadding(.bottom)
        }
    
#sourceLocation()
    }
}

import struct Bouli.Order
import struct Bouli.OrdersView
import struct Bouli.CurrentOrderRow
import struct Bouli.OrderDetailView
#Preview {
    OrdersView()
}




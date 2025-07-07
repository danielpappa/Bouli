//
//  ProfileView.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack(spacing: 30) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.gray)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(0.3), lineWidth: 1))
                    VStack(alignment: .leading, spacing: 5) {
                        Text("John Doe")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("john.doe@example.com")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("+39 333 333333")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .background(Color(red: 102/255, green: 127/255, blue: 54/255, opacity: 0.3))
                
                Divider()

                List {
                    Section {
                        NavigationLink(destination: Text("Account Settings View")) {
                            Label("Account Settings", systemImage: "person.crop.circle")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                        NavigationLink(destination: Text("Your Activity View")) {
                            Label("Order History", systemImage: "clock.fill")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                    }
                    
                    Section {
                        NavigationLink(destination: Text("Payment Methods View")) {
                            Label("Payment Methods", systemImage: "creditcard.fill")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                        NavigationLink(destination: Text("Promo Code View")) {
                            Label("Promo Codes", systemImage: "tag.fill")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                        NavigationLink(destination: Text("Refer a Friend View")) {
                            Label("Refer a Friend", systemImage: "person.badge.plus")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }

                    }
                    
                    Section {
                        NavigationLink(destination: Text("App Language View")) {
                            Label("App Language", systemImage: "globe")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                        NavigationLink(destination: Text("Notifications View")) {
                            Label("Notifications", systemImage: "bell.fill")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                    }
                    
                    Section {
                        NavigationLink(destination: Text("Help & Support View")) {
                            Label("Help & Support", systemImage: "questionmark.circle.fill")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                        NavigationLink(destination: Text("Legal Information View")) {
                            Label("Legal Information", systemImage: "doc.text.fill")
                                .foregroundColor(Color(red: 102/255, green: 127/255, blue: 54/255))
                        }
                        Button(action: {
                        }) {
                            Label("Sign Out", systemImage: "arrow.right.square.fill")
                                .foregroundColor(.red)
                        }
                    }
                }
                .listStyle(.insetGrouped)
                Spacer()
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    ProfileView()
}

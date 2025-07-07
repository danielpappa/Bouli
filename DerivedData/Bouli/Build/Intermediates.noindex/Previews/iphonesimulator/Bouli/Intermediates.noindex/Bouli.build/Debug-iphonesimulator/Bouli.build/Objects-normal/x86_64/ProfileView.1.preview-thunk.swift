@_private(sourceFile: "ProfileView.swift") import Bouli
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ProfileView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/pappalardodaniel/Desktop/Bouli/Bouli/Bouli/ProfileView.swift", line: 12)
        NavigationStack {
            VStack(spacing: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 0)) {
                HStack(spacing: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: 30)) {
                    Image(systemName: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "person.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 80), height: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 80))
                        .foregroundColor(.gray)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray.opacity(__designTimeFloat("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[5].arg[0].value.modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)), lineWidth: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[5].arg[0].value.modifier[0].arg[1].value", fallback: 1)))
                    VStack(alignment: .leading, spacing: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[1].value", fallback: 5)) {
                        Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[0].arg[0].value", fallback: "John Doe"))
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[1].arg[0].value", fallback: "john.doe@example.com"))
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[1].arg[2].value.[2].arg[0].value", fallback: "+39 333 333333"))
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 20))
                .frame(maxWidth: .infinity)
                .background(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value.[1]", fallback: 255), opacity: __designTimeFloat("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[3].value", fallback: 0.3)))
                
                Divider()

                List {
                    Section {
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Account Settings View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Account Settings"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "person.crop.circle"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Your Activity View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Order History"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "clock.fill"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                    }
                    
                    Section {
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Payment Methods View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Payment Methods"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "creditcard.fill"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Promo Code View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Promo Codes"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "tag.fill"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[0].value.arg[0].value", fallback: "Refer a Friend View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Refer a Friend"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[1].value", fallback: "person.badge.plus"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }

                    }
                    
                    Section {
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "App Language View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "App Language"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "globe"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Notifications View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Notifications"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "bell.fill"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[2].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                    }
                    
                    Section {
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Help & Support View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Help & Support"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].arg[1].value", fallback: "questionmark.circle.fill"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                        NavigationLink(destination: Text(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Legal Information View"))) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Legal Information"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].arg[1].value", fallback: "doc.text.fill"))
                                .foregroundColor(Color(red: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[0]", fallback: 102)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value.[1]", fallback: 255), green: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[0]", fallback: 127)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[1].value.[1]", fallback: 255), blue: __designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[0]", fallback: 54)/__designTimeInteger("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[2].value.[1]", fallback: 255)))
                        }
                        Button(action: {
                        }) {
                            Label(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Sign Out"), systemImage: __designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[3].arg[0].value.[2].arg[1].value.[0].arg[1].value", fallback: "arrow.right.square.fill"))
                                .foregroundColor(.red)
                        }
                    }
                }
                .listStyle(.insetGrouped)
                Spacer()
            }
            .navigationTitle(__designTimeString("#19490.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: ""))
            .navigationBarTitleDisplayMode(.inline)
            
        }
    
#sourceLocation()
    }
}

import struct Bouli.ProfileView
#Preview {
    ProfileView()
}




//
//  MenuSections.swift
//  Bouli
//
//  Created by Daniel Pappalardo on 04/07/25.
//

import Foundation

enum MenuSection: String, CaseIterable, Identifiable {
    case home = "Home"
    case menu = "Menu"
    case orders = "Orders"
    case profile = "Profile"

    var id: String { self.rawValue }

    var systemImageName: String {
        switch self {
        case .home: return "fork.knife"
        case .menu: return "list.bullet.rectangle.portrait"
        case .orders: return "shippingbox.fill"
        case .profile: return "person.fill"
        }
    }
}

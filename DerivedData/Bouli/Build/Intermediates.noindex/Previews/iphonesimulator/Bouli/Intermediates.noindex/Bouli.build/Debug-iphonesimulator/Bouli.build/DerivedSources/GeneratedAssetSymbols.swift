import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "CFConfezione" asset catalog image resource.
    static let cfConfezione = DeveloperToolsSupport.ImageResource(name: "CFConfezione", bundle: resourceBundle)

    /// The "CFConsegna" asset catalog image resource.
    static let cfConsegna = DeveloperToolsSupport.ImageResource(name: "CFConsegna", bundle: resourceBundle)

    /// The "CFContattaci" asset catalog image resource.
    static let cfContattaci = DeveloperToolsSupport.ImageResource(name: "CFContattaci", bundle: resourceBundle)

    /// The "CFScegliere" asset catalog image resource.
    static let cfScegliere = DeveloperToolsSupport.ImageResource(name: "CFScegliere", bundle: resourceBundle)

    /// The "home1" asset catalog image resource.
    static let home1 = DeveloperToolsSupport.ImageResource(name: "home1", bundle: resourceBundle)

    /// The "home2" asset catalog image resource.
    static let home2 = DeveloperToolsSupport.ImageResource(name: "home2", bundle: resourceBundle)

    /// The "home3" asset catalog image resource.
    static let home3 = DeveloperToolsSupport.ImageResource(name: "home3", bundle: resourceBundle)

    /// The "pickup" asset catalog image resource.
    static let pickup = DeveloperToolsSupport.ImageResource(name: "pickup", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "CFConfezione" asset catalog image.
    static var cfConfezione: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cfConfezione)
#else
        .init()
#endif
    }

    /// The "CFConsegna" asset catalog image.
    static var cfConsegna: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cfConsegna)
#else
        .init()
#endif
    }

    /// The "CFContattaci" asset catalog image.
    static var cfContattaci: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cfContattaci)
#else
        .init()
#endif
    }

    /// The "CFScegliere" asset catalog image.
    static var cfScegliere: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cfScegliere)
#else
        .init()
#endif
    }

    /// The "home1" asset catalog image.
    static var home1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home1)
#else
        .init()
#endif
    }

    /// The "home2" asset catalog image.
    static var home2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home2)
#else
        .init()
#endif
    }

    /// The "home3" asset catalog image.
    static var home3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home3)
#else
        .init()
#endif
    }

    /// The "pickup" asset catalog image.
    static var pickup: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pickup)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "CFConfezione" asset catalog image.
    static var cfConfezione: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cfConfezione)
#else
        .init()
#endif
    }

    /// The "CFConsegna" asset catalog image.
    static var cfConsegna: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cfConsegna)
#else
        .init()
#endif
    }

    /// The "CFContattaci" asset catalog image.
    static var cfContattaci: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cfContattaci)
#else
        .init()
#endif
    }

    /// The "CFScegliere" asset catalog image.
    static var cfScegliere: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cfScegliere)
#else
        .init()
#endif
    }

    /// The "home1" asset catalog image.
    static var home1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home1)
#else
        .init()
#endif
    }

    /// The "home2" asset catalog image.
    static var home2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home2)
#else
        .init()
#endif
    }

    /// The "home3" asset catalog image.
    static var home3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home3)
#else
        .init()
#endif
    }

    /// The "pickup" asset catalog image.
    static var pickup: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pickup)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif


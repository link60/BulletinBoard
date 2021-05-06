/**
 *  BulletinBoard
 *  Copyright (c) 2017 - present Alexis Aubry. Licensed under the MIT license.
 */

import UIKit

/**
 * Represents a spacing value.
 */

@objc public class BLTNSpacing: NSObject {
    public let rawValue: CGFloat

    init(rawValue: CGFloat) {
        self.rawValue = rawValue
    }

    /// A custom spacing.
    /// - parameter value: The spacing to apply.
    @objc public class func custom(_ value: CGFloat) -> BLTNSpacing {
        return BLTNSpacing(rawValue: value)
    }

    /// No spacing is applied. (value: 0)
    /// - note: If you use this spacing, corner radii will be ignored.
    @objc public class var none: BLTNSpacing {
        return BLTNSpacing(rawValue: 0)
    }

     /// A compact spacing. (value: 6)
    @objc public class var compact: BLTNSpacing {
        return BLTNSpacing(rawValue: 6)
    }

    /// The standard spacing. (value: 12)
    @objc public class var regular: BLTNSpacing {
        return BLTNSpacing(rawValue: 12)
    }
    
    static func == (lhs: BLTNSpacing, rhs: BLTNSpacing) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}

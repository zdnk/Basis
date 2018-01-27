//
//  With.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

import Foundation

public protocol With {}

public extension With where Self: Any {
    
    /// Makes it available to set properties with closures just after initializing and copying the value types.
    ///
    ///     let frame = CGRect().with {
    ///       $0.origin.x = 10
    ///       $0.size.width = 100
    ///     }
    public func with(_ block: (inout Self) throws -> Void) rethrows -> Self {
        var copy = self
        try block(&copy)
        return copy
    }
    
}

extension CGPoint: With {}
extension CGRect: With {}
extension CGSize: With {}
extension CGVector: With {}

#if os(iOS) || os(tvOS)
    extension UIEdgeInsets: With {}
    extension UIOffset: With {}
    extension UIRectEdge: With {}
#endif

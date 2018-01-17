//
//  result.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

import Foundation


public func result<T>(_ closure: () -> T) -> T {
    return closure()
}

public func result<T>(default fallback: T, _ closure: () throws -> T) -> T {
    do {
        return try closure()
    } catch let error {
        BasisLogger.shared.log(.error, message: error.localizedDescription)
        return fallback
    }
}

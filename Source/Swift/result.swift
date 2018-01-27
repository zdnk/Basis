//
//  result.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

public func result<T>(_ closure: () throws -> T) rethrows -> T {
    return try closure()
}

public func result<T>(_ closure: () -> T) -> T {
    return closure()
}

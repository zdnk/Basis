//
//  Optional+IsNilOrEmpty.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

public extension Optional where Wrapped == String {
    public var isNilOrEmpty: Bool {
        switch self {
        case let string?:
            return string.isEmpty
        case nil:
            return true
        }
    }
}

public extension Optional where Wrapped: Collection {
    public var isNilOrEmpty: Bool {
        switch self {
        case let collection?:
            return collection.isEmpty
        case nil:
            return true
        }
    }
}

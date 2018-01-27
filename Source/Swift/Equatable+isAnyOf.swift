//
//  Equatable.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

public extension Equatable {
    
    public func isAny(of elements: [Self]) -> Bool {
        return elements.contains(self)
    }
    
    public func isAny(of elements: Self...) -> Bool {
        return isAny(of: elements)
    }
    
}

public struct EquatableValueSequence<T: Equatable> {
    
    public static func == (lhs: EquatableValueSequence<T>, rhs: T) -> Bool {
        return lhs.values.contains(rhs)
    }
    
    public static func == (lhs: T, rhs: EquatableValueSequence<T>) -> Bool {
        return rhs == lhs
    }
    
    fileprivate let values: [T]
    
}

public func any<T: Equatable>(of values: T...) -> EquatableValueSequence<T> {
    return EquatableValueSequence(values: values)
}

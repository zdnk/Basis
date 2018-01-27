//
//  Collection+FilterNil.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

public protocol _OptionalType {
    
    associatedtype _Wrapped
    
    var value: _Wrapped? { get }
    
    func flatMap<U>(_ transform: (_Wrapped) throws -> U?) rethrows -> U?
    
}

extension Optional: _OptionalType {
    
    public typealias _Wrapped = Wrapped
    
    public var value: _Wrapped? {
        return self
    }
    
}

public extension Collection where Iterator.Element: _OptionalType {
    
    public func filterNil() -> [Iterator.Element._Wrapped] {
        return self.flatMap { $0.flatMap { $0 } }
    }
    
}

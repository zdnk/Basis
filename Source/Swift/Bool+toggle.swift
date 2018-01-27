//
//  Bool+toggle.swift
//  Basis
//
//  Created by Topic, Zdenek on 17/01/2018.
//  Copyright © 2018 Zdenek Topic. All rights reserved.
//

public extension Bool {
    
    public mutating func toggle() {
        self = !self
    }
    
    public func toggled() -> Bool {
        return !self
    }
    
}

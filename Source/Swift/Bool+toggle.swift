//
//  Bool+toggle.swift
//  Basis
//
//  Created by Topic, Zdenek on 17/01/2018.
//  Copyright © 2018 Zdenek Topic. All rights reserved.
//

import Foundation

public extension Bool {
    
    @discardableResult
    public mutating func toggle() -> Bool {
        self = !self
        return self
    }
    
}

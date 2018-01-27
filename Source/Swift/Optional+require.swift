//
//  Optional+require.swift
//  Basis
//
//  Created by Topic, Zdenek on 25/01/2018.
//  Copyright © 2018 Zdenek Topic. All rights reserved.
//

public extension Optional {
    
    public struct RequireError: Error, LocalizedError {
        
        let type: String
        let file: String
        let line: Int
        
        public var localizedDescription: String {
            return "Optional<\(type)>.RequireError: found nil in \(file):\(line)"
        }
        
    }
    
    public func require(_ file: String = #file, _ line: Int = #line) throws -> Wrapped {
        switch self {
        case .some(let unwrapped):
            return unwrapped
        case .none:
            throw RequireError(
                type: String(describing: Wrapped.self),
                file: file,
                line: line
            )
        }
    }
    
}

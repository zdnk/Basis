//
//  BasisLogger.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

import Foundation

public class BasisLogger {
    
    public enum Level {
        case error
    }
    
    public typealias LogClosure = (Level, String) -> Void
    
    public static let shared = BasisLogger()
    
    public static func defaultLogClosure() -> LogClosure {
        return { _, message in
            print(message)
        }
    }
    
    private var logClosure: LogClosure
    
    public init(_ closure: @escaping LogClosure = BasisLogger.defaultLogClosure()) {
        self.logClosure = closure
    }
    
    public func log(_ level: Level, message: String) {
        logClosure(level, message)
    }
    
    public func setup(_ closure: @escaping LogClosure) {
        logClosure = closure
    }
    
}

//
//  Cells+Reusable.swift
//  Basis
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

import Foundation
import UIKit

extension Reusable where Self: UITableViewCell {
    
    public var reuseIdentifier: String {
        return String(describing: self)
    }
    
}

extension Reusable where Self: UICollectionViewCell {
    
    public var reuseIdentifier: String {
        return String(describing: self)
    }
    
}

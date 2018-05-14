//
//  ReusableNibView.swift
//  POP Cells
//
//  Created by Oleksii Huralnyk on 5/14/18.
//  Copyright © 2018 Oleksii Huralnyk. All rights reserved.
//

import UIKit

typealias ReusableNibView = NibLoadableView & ReusableView


protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
    
}


protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        let identifier = String(describing: self)
        return identifier
    }
    
}

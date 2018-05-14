//
//  UICollectionView+Extensions.swift
//  POP Cells
//
//  Created by Oleksii Huralnyk on 5/14/18.
//  Copyright © 2018 Oleksii Huralnyk. All rights reserved.
//

import UIKit

extension UICollectionViewCell: ReusableNibView {}

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func register<T: UIView>(_: T, forSupplementaryViewOfKind kind: String) where T: ReusableNibView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
    
    func dequeueReusableSupplementaryView<T: UIView>(ofKind kind: String, for indexPath: IndexPath) -> T where T: ReusableView {
        guard let view = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not deque supplementary view of kind: \(kind) with identifier: \(T.reuseIdentifier)")
        }
        
        return view
    }
    
}

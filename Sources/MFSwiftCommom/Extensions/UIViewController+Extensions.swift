//
//  UIViewController+Extensions.swift
//
//  Created by Marcos Felipe Souza on 07/04/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public extension UIViewController {

    /// Constraint top with Safe Area and Navigation Bar
    var topAnchorSafeArea: NSLayoutYAxisAnchor {
        let topAnchor: NSLayoutYAxisAnchor
        if #available(iOS 11.0, *) {
            topAnchor = view.safeAreaLayoutGuide.topAnchor
        } else {
            topAnchor = topLayoutGuide.topAnchor
        }
        return topAnchor
    }
    
    /// Constraint Bottom with Safe Area and Toolbar
    var bottomAnchorSafeArea: NSLayoutYAxisAnchor {
        let topAnchor: NSLayoutYAxisAnchor
        if #available(iOS 11.0, *) {
            topAnchor = view.safeAreaLayoutGuide.bottomAnchor
        } else {
            topAnchor = topLayoutGuide.bottomAnchor
        }
        return topAnchor
    }
    
}

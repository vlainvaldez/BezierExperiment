//
//  UIView+Extensions.swift
//  BezierExperiment
//
//  Created by alvin joseph valdez on 10/08/2019.
//  Copyright © 2019 alvin joseph valdez. All rights reserved.
//

import UIKit

extension UIView {
    
    func subview(forAutoLayout subview: UIView) {
        self.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func subviews(forAutoLayout subviews: UIView...) {
        self.subviews(forAutoLayout: subviews)
    }
    
    func subviews(forAutoLayout subviews: [UIView]) {
        subviews.forEach(self.subview)
    }
}

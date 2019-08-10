//
//  BezView.swift
//  BezierExperiment
//
//  Created by alvin joseph valdez on 10/08/2019.
//  Copyright © 2019 alvin joseph valdez. All rights reserved.
//

import UIKit

public class BezView: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.red
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        self.dentCreator()
    }
    
    func dentCreator() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.frame.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height/5))
        path.addLine(to: CGPoint(x: self.frame.width - 20 , y: self.frame.height/3 - 15))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height/3))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.height))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        self.backgroundColor = UIColor.orange
        self.layer.mask = shapeLayer
    }
}

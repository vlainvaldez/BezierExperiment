//
//  MainView.swift
//  BezierExperiment
//
//  Created by alvin joseph valdez on 10/08/2019.
//  Copyright © 2019 alvin joseph valdez. All rights reserved.
//

import UIKit
import SnapKit

public class MainView: UIView {
    
    public let bezView: BezView = {
        let view: BezView = BezView()
        return view
    }()
    

    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.red.withAlphaComponent(0.7)
        
        self.subview(forAutoLayout: self.bezView)
        
        self.bezView.snp.remakeConstraints { (make: ConstraintMaker) -> Void in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(200.0)
            make.width.equalTo(400.0)
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

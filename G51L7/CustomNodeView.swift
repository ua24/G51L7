//
//  CustomNodeView.swift
//  G51L7
//
//  Created by Ivan Vasilevich on 2/28/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class CustomNodeView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup() {
        self.backgroundColor = UIColor.clear
    }

    
    override func draw(_ rect: CGRect) {
        // Drawing code
//        StyleKitName.drawCanvas1()
        let width = bounds.width, height = bounds.height
        let line = UIBezierPath.init()
        line.move(to: CGPoint(x: width / 2, y: height / 2))
        line.addLine(to: CGPoint(x: width, y: 0))
        
        UIColor.orange.setStroke()
        line.lineWidth = 5
        line.stroke()
        
        
    }

}

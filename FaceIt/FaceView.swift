//
//  FaceView.swift
//  FaceIt
//
//  Created by Hank Liu on 7/30/16.
//  Copyright © 2016 Hank Liu. All rights reserved.
//

import UIKit

class FaceView: UIView {

    override func drawRect(rect: CGRect) {
      // drawing my own coordinate system
      let skullRadius = min(bounds.size.width, bounds.size.height) / 2
      let skullCenter = CGPoint(x: bounds.midX, y: bounds.midY)
      
      // 0.0 is literal, Swift will convert it into any type automatically.
      let skull = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0.0, endAngle: CGFloat(2*M_PI), clockwise: false)
      skull.lineWidth = 5.0
      UIColor.blueColor().set()
      skull.stroke()
    }
  
}

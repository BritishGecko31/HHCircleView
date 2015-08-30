//
//  HHCircleView.swift
//  HHCircleView
//
//  Created by Mathew Trussell on 8/30/15.
//  Copyright © 2015 HailHydrant. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class HHCircleView: UIView {
    
    let progressLayer = CAShapeLayer()
    
    // MARK: - IBInspectable
    
    // Common Circle
    @IBInspectable var angle: Float = 0
    //@IBInspectable var rotation: Float = 0
    //@IBInspectable var mask: UIImage?
    
    // Progress Circle Appearance
    @IBInspectable var progressLineWidth: CGFloat = 10
    @IBInspectable var progressLineColor: UIColor = UIColor.greenColor()
    @IBInspectable var progressBorderWidth: CGFloat = 1
    @IBInspectable var progressBorderColor: UIColor = UIColor.greenColor()
    @IBInspectable var progressLineCapStyle: String = "kCGLineCapButt"
    
    // Background Circle Appearance
    //@IBInspectable var backgroundVisibility: Bool = true
    //@IBInspectable var backgroundLineWidth: CGFloat = 1
    //@IBInspectable var backgroundLineColor: UIColor = UIColor.lightGrayColor()
    //@IBInspectable var backgroundBorderWidth: CGFloat = 10
    //@IBInspectable var backgroundBorderColor: UIColor = UIColor.lightGrayColor()
    //@IBInspectable var backgroundEndCapStyle: CGLineCap = kCGLineCapButt
    
    // Value Label
    //@IBInspectable var value: CGFloat = 33
    //@IBInspectable var maxValue: CGFloat = 100
    //@IBInspectable var valueDecimals: Int = 2
    //@IBInspectable var valueFontName: String = "System"
    //@IBInspectable var valueFontSize: CGFloat = 12
    //@IBInspectable var valueFontColor: UIColor = UIColor.blackColor()
    //@IBInspectable var showValue: Bool = true
    
    // Units Label
    //@IBInspectable var units: String = "%"
    //@IBInspectable var unitsFontName: String = "System"
    //@IBInspectable var unitsFontSize: CGFloat = 12
    //@IBInspectable var unitsFontColor: UIColor = UIColor.blackColor()
    //@IBInspectable var showUnits: Bool = true
    
    
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure(frame)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(frame: CGRect) {
        
        let radius = min(self.frame.width / 2, self.frame.height / 2)
        
        progressLayer.bounds = self.bounds
        progressLayer.frame = self.frame
        progressLayer.cornerRadius = radius
        progressLayer.path = UIBezierPath(arcCenter: CGPoint(x: radius, y: radius),
            radius: CGFloat((radius - progressBorderWidth) - (progressLineWidth / 2)),
            startAngle: CGFloat(radians(angle)),
            endAngle:  CGFloat(-1 * radians(angle)),
            clockwise: true).CGPath
        
        progressLayer.borderColor = progressBorderColor.CGColor
        progressLayer.borderWidth = progressBorderWidth
        progressLayer.lineWidth = progressLineWidth
        progressLayer.strokeColor = progressLineColor.CGColor
        progressLayer.lineCap = progressLineCapStyle
        
        self.layer.addSublayer(progressLayer)
        self.layoutSubviews()
    }
    
    
    // MARK: - Private
    func radians(degrees: Float) -> Float {
        return Float(Double(degrees) / 180.0 * M_PI)
    }
}
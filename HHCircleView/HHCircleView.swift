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
    
    // MARK: - IBInspectable
    
    // Common Circle
    @IBInspectable var angle: CGFloat = 0
    @IBInspectable var rotation: CGFloat = 0
    //@IBInspectable var mask: UIImage?
    
    // Progress Circle Appearance
    @IBInspectable var progressLineWidth: CGFloat = 10
    @IBInspectable var progressLineColor: UIColor = UIColor.greenColor()
    @IBInspectable var progressBorderWidth: CGFloat = 1
    @IBInspectable var progressBorderColor: UIColor = UIColor.greenColor()
    @IBInspectable var progressEndCapStyle: CGLineCap = kCGLineCapButt
    
    // Background Circle Appearance
    @IBInspectable var backgroundVisibility: Bool = true
    @IBInspectable var backgroundLineWidth: CGFloat = 1
    @IBInspectable var backgroundLineColor: UIColor = UIColor.lightGrayColor()
    @IBInspectable var backgroundBorderWidth: CGFloat = 10
    @IBInspectable var backgroundBorderColor: UIColor = UIColor.lightGrayColor()
    @IBInspectable var backgroundEndCapStyle: CGLineCap = kCGLineCapButt
    
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
        
        
    }

}
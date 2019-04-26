//
//  AFCustomView.swift
//  AFCustomView
//
//  Created by Afiq Hamdan on 26/04/2019.
//  Copyright © 2019 amtrust. All rights reserved.
//

import UIKit

@IBDesignable public class AFCustomViewDesignable: UIView {
    
    @IBInspectable
    public var radius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            self.clipsToBounds = true
            return layer.cornerRadius
        }
    }
    
    @IBInspectable
    public var sRadius: CGFloat {
        set {
            layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    
    @IBInspectable
    public var sOffset: CGSize {
        set {
            layer.shadowOffset = newValue
        }
        get {
            return layer.shadowOffset
        }
    }
    
    @IBInspectable
    public var sColor: UIColor {
        set {
            layer.shadowColor = newValue.cgColor
        }
        get {
            return UIColor(cgColor: layer.shadowColor!)
        }
    }
    
    @IBInspectable
    public var sOpacity: Float {
        set {
            layer.opacity = newValue
        }
        get {
            return layer.opacity
        }
    }
    
    
    @IBInspectable
    public var bgColor: UIColor {
        set {
            backgroundColor = newValue
        }
        get {
            return backgroundColor!
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configureView()
    }
    
    fileprivate func configureView() {
        layer.shadowColor = sColor.cgColor
        layer.shadowOpacity = sOpacity
        layer.shadowOffset = sOffset
        layer.shadowRadius = sRadius
        layer.shouldRasterize = true
    }
    
    
}

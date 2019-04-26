//
//  AFCustomView.swift
//  AFCustomView
//
//  Created by Afiq Hamdan on 26/04/2019.
//  Copyright © 2019 amtrust. All rights reserved.
//

import UIKit

class AFCustomView: UIView {
    
    // PROPERTIES
    var radius = CGFloat()
    var sRadius = CGFloat()
    var sOffset = CGSize()
    var sColor = UIColor()
    var sOpacity = Float()
    
    var shadowView: UIView!
    var contentView: UIView!
    
    var bgColor: UIColor? {
        didSet {
            contentView.backgroundColor = bgColor
        }
    }
    
    public init(cornerRadius: CGFloat, shadowRadius: CGFloat, shadowOffset: CGSize, shadowColor: UIColor, shadowOpacity: Float) {
        super.init(frame: CGRect.zero)
        
        self.radius = cornerRadius
        self.sRadius = shadowRadius
        self.sOffset = shadowOffset
        self.sColor = shadowColor
        self.sOpacity = shadowOpacity
        
        configureShadowView()
        configureContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configureShadowView() {
        // uiview settings
        shadowView = UIView()
        shadowView.backgroundColor = .clear
        shadowView.layer.shadowColor = sColor.cgColor
        shadowView.layer.shadowOffset = sOffset
        shadowView.layer.opacity = sOpacity
        shadowView.layer.cornerRadius = radius
        addSubview(shadowView)
        
        // autolayout configureShadowView
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        shadowView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        shadowView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        shadowView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        shadowView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    fileprivate func configureContentView() {
        // uiview settings
        contentView = UIView()
        contentView.layer.cornerRadius = radius
        contentView.clipsToBounds = true
        shadowView.addSubview(contentView)
        
        // autolayout configureContentView
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

    }
    
    func addChildView(childView: UIView) {
        contentView.addSubview(childView)
    }
    
    
}

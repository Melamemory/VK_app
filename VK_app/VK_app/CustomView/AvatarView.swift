//
//  AvatarView.swift
//  VK_app
//
//  Created by Юлия Ишмурзина on 24.06.2020.
//  Copyright © 2020 Юлия Ишмурзина. All rights reserved.
//

import UIKit

@IBDesignable class AvatarView: UIView {
    
    let avatar = UIImageView()
    
    @IBInspectable var shadowColor: UIColor = .black {
        didSet {
            self.updateColor()
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat = 1.0 {
        didSet {
            self.updateOpacity()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 10 {
        didSet {
            self.updateRadius()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = .zero {
        didSet {
            self.updateOffset()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(avatar)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubview(avatar)
    }
    
    override func layoutSubviews() {
        avatar.frame = bounds
        
        layer.backgroundColor = UIColor.clear.cgColor
        
        avatar.layer.cornerRadius = bounds.height / 2
        avatar.clipsToBounds = true
        
    }
    
    func updateColor() {
        self.layer.shadowColor = self.shadowColor.cgColor
    }
    
    func updateOpacity() {
        self.layer.shadowOpacity = Float(self.shadowOpacity)
    }
    
    func updateRadius() {
        self.layer.shadowRadius = self.shadowRadius
    }
    
    func updateOffset() {
        self.layer.shadowOffset = shadowOffset
    }
    
}

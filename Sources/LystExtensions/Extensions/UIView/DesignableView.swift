//
//  File.swift
//  
//
//  Created by Mohsin Hussain on 09/08/2021.
//

import Foundation
#if canImport(UIKit)

import UIKit

#endif

extension UIView {
    
    @IBInspectable public var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable public var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            return layer.borderColor?.UIColor
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
}

extension UIView {
        
    public func topOnlyCornerRadius(radiusValue: Int) {
        self.layer.cornerRadius = CGFloat(radiusValue)
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    public func bottomOnlyCornerRadius(radiusValue: Int) {
        self.layer.cornerRadius = CGFloat(radiusValue)
        self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    public func topAndbottomRightCornerRadius(radiusValue: Int) {
        self.layer.cornerRadius = CGFloat(radiusValue)
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    }
    
    public func bottomLeftCornerRadius(radiusValue: Int) {
        self.layer.cornerRadius = CGFloat(radiusValue)
        self.layer.maskedCorners = [.layerMinXMaxYCorner]
    }
    
    public func bottomRightCornerRadius(radiusValue: Int) {
        self.layer.cornerRadius = CGFloat(radiusValue)
        self.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }
       
}

extension CGColor {
    
    fileprivate var UIColor: UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
    
}

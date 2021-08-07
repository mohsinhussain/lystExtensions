//
//  File.swift
//  
//
//  Created by Mohsin Hussain on 07/08/2021.
//

#if canImport(UIKit)

import UIKit

#endif
import SwiftyShadow

extension UIView {
    
    public func addSwiftyOutterShadowWithCorner(shadowColor: UIColor, offSet: CGSize, opacity: Float, shadowRadius: CGFloat,
                                         cornerRadius: CGFloat, raster: Bool = false) {
        
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = opacity
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = offSet
        
        self.generateOuterShadow()
        
        if raster {
            self.layer.shouldRasterize = true
            self.layer.rasterizationScale = UIScreen.main.scale
        }
    }
    
}

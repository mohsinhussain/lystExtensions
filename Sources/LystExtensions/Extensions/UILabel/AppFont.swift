//
//  File.swift
//  
//
//  Created by Mohsin Hussain on 07/08/2021.
//

import Foundation

#if canImport(UIKit)

import UIKit

#endif

public enum TypeFace: String {
    case bold = "Bold"
    case semiBold = "SemiBold"
    case regular = "Regular"
    case light = "Italic"
}
public enum FontName: String {
    case sourceSansPro = "SourceSansPro"
}

extension UIFont {

    public static func font(typeFace: TypeFace, size: CGFloat = 13) -> UIFont {
        let name = FontName.sourceSansPro.rawValue + "-" + typeFace.rawValue
        if let refinedFont = UIFont(name: name, size: size) {
            return refinedFont
        } else {
            return UIFont.systemFont(ofSize: size)
        }
    }
}

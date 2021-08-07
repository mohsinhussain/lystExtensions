//
//  File.swift
//  
//
//  Created by Mohsin Hussain on 07/08/2021.
//

#if canImport(UIKit)

import UIKit

#endif

extension UIViewController {
    
    public func addTopRightButton(with image: UIImage?, target: Any?, action: Selector) {
        let button = UIButton(type: .custom)
        button.setImage(image, for: .normal)
        button.frame.size = CGSize(width: 40, height: 40)
        button.addTarget(target, action: action, for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
    }

}

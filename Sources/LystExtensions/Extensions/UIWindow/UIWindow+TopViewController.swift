//
//  File.swift
//  
//
//  Created by Mohsin Hussain on 08/08/2021.
//

import UIKit

extension UIWindow {
    
    public static var key: UIWindow? {
        return UIApplication.shared.windows.first { $0.isKeyWindow }
    }
    
    public func topViewController() -> UIViewController? {
        var top = self.rootViewController
        while true {
            if let presented = top?.presentedViewController {
                top = presented
            } else if let nav = top as? UINavigationController {
                top = nav.visibleViewController
            } else if let tab = top as? UITabBarController {
                top = tab.selectedViewController
            } else {
                break
            }
        }
        return top
    }
}

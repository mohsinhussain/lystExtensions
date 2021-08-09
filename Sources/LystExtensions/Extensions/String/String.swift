//
//  File.swift
//  
//
//  Created by Mohsin Hussain on 09/08/2021.
//

import Foundation

extension String {

    public func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespaces).trimmingCharacters(in: CharacterSet.controlCharacters)
    }
    
}

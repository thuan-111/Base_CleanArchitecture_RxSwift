//
//  UINavigationBar+.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit

extension UINavigationBar {
    func prefersLargeTitles() {
        prefersLargeTitles = true
    }
    
    func rejectLargeTitles() {
        prefersLargeTitles = false
    }
}

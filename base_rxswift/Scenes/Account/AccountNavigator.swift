//
//  AccountNavigator.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit

protocol AccountNavigatorType {
    
}

struct AccountNavigator: AccountNavigatorType{
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController
    
}

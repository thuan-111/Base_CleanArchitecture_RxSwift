//
//  MainNavigator.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit

protocol MainNavigatorType {
    func loadHome(navigationController: UINavigationController)
    func loadAccount(navigationController: UINavigationController)
}

struct MainNavigator: MainNavigatorType {
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController
    
    func loadHome(navigationController: UINavigationController) {
        let vc: HomeViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: false)
    }
    
    func loadAccount(navigationController: UINavigationController) {
        let vc: AccountViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: false)
    }
    
}

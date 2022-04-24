//
//  AppNavigator.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit

protocol AppNavigatorType {
    func toMain()
}

struct AppNavigator: AppNavigatorType {
    unowned let assembler: Assembler
    unowned let window: UIWindow
    
    func toMain() {
        let navigationController = UINavigationController()
        let vc: MainViewController = assembler.resolve(navigationController: navigationController)
        navigationController.viewControllers.append(vc)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
}

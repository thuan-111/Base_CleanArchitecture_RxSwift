//
//  MainAssembler.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit

protocol MainAssembler {
    func resolve(navigationController: UINavigationController) -> MainViewController
    func resolve(navigationController: UINavigationController) -> MainViewModel
    func resolve(navigationController: UINavigationController) -> MainNavigatorType
    func resolve() -> MainUseCaseType
}

extension MainAssembler {
    func resolve(navigationController: UINavigationController) -> MainViewController {
        let navigator: MainNavigatorType = resolve(navigationController: navigationController)
        
        // Home
        let homeNavigationController = BaseNavigationController()
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home",
                                                          image: nil,
                                                          selectedImage: nil)
        navigator.loadHome(navigationController: homeNavigationController)
        
        // Account
        let accountNavigationController = BaseNavigationController()
        accountNavigationController.tabBarItem = UITabBarItem(title: "Account",
                                                          image: nil,
                                                          selectedImage: nil)
        navigator.loadAccount(navigationController: accountNavigationController)
        
        // Main Tabbar
        let mainViewController = MainViewController()
        mainViewController.viewControllers = [
            homeNavigationController,
            accountNavigationController
        ]
        let vm = MainViewModel(useCase: resolve(),
                              navigator: resolve(navigationController: navigationController))
        mainViewController.bindViewModel(to: vm)
        
        return mainViewController
        
    }
    
    func resolve(navigationController: UINavigationController) -> MainViewModel {
        return MainViewModel(useCase: resolve(),
                            navigator: resolve(navigationController: navigationController))
    }
}

extension MainAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> MainNavigatorType {
        return MainNavigator(assembler: self, navigationController: navigationController)
    }
    func resolve() -> MainUseCaseType {
        return MainUseCase()
    }
}

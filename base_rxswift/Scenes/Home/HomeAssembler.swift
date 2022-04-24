//
//  HomeAssembler.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit

protocol HomeAssembler {
    func resolve(navigationController: UINavigationController) -> HomeViewController
    func resolve(navigationController: UINavigationController) -> HomeViewModel
    func resolve(navigationController: UINavigationController) -> HomeNavigatorType
    func resolve() -> HomeUseCaseType
}

extension HomeAssembler {
    func resolve(navigationController: UINavigationController) -> HomeViewController {
        let vc = HomeViewController.instantiate()
        let vm: HomeViewModel = resolve(navigationController: navigationController)
        vc.bindViewModel(to: vm)
        return vc
    }
    
    func resolve(navigationController: UINavigationController) -> HomeViewModel {
        return HomeViewModel(useCase: resolve(),
                            navigator: resolve(navigationController: navigationController))
    }
}

extension HomeAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> HomeNavigatorType {
        return HomeNavigator(assembler: self,
                            navigationController: navigationController)
    }
    
    func resolve() -> HomeUseCaseType {
        return HomeUseCase()
    }
}

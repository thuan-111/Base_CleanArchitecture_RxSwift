//
//  AccountAssembler.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit

protocol AccountAssembler {
    func resolve(navigationController: UINavigationController) -> AccountViewController
    func resolve(navigationController: UINavigationController) -> AccountViewModel
    func resolve(navigationController: UINavigationController) -> AccountNavigatorType
    func resolve() -> AccountUseCaseType
}

extension AccountAssembler {
    func resolve(navigationController: UINavigationController) -> AccountViewController {
        let vc = AccountViewController.instantiate()
        let vm: AccountViewModel = resolve(navigationController: navigationController)
        vc.bindViewModel(to: vm)
        return vc
    }
    
    func resolve(navigationController: UINavigationController) -> AccountViewModel {
        return AccountViewModel(useCase: resolve(), navigator: resolve(navigationController: navigationController))
    }
}

extension AccountAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> AccountNavigatorType {
        return AccountNavigator(assembler: self, navigationController: navigationController)
    }
    func resolve() -> AccountUseCaseType {
        return AccountUseCase()
    }
}

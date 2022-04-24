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
    
}

extension MainAssembler where Self: DefaultAssembler {
    
}

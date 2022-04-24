//
//  BaseNavigationController.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit

final class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        navigationBar.prefersLargeTitles()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

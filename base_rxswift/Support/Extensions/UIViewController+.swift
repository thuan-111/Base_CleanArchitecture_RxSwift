//
//  UIViewController+.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 18/04/2022.
//

import UIKit

extension UIViewController {
    func showError(message: String, completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: "Error",
                                                message: message,
                                                preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okey", style: .cancel) { _ in
            completion?()
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true)
    }
    
    func logDeinit() {
        print(String(describing: type(of: self)) + "deinit")
    }
}

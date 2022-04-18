//
//  UIViewController+Rx.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 18/04/2022.
//

import UIKit
import MBProgressHUD
import RxSwift
import RxCocoa

extension UIViewController {
    var error: Binder<Error> {
        return Binder(self) { viewController, error in
            viewController.showError(message: error.localizedDescription)
        }
    }
    
    var isLoading: Binder<Bool> {
        return Binder(self) { viewController, isLoading in
            if isLoading {
                MBProgressHUD.showAdded(to: viewController.view, animated: true)
            } else {
                MBProgressHUD.hide(for: viewController.view, animated: true)
            }
        }
    }
    
}

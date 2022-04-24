//
//  BindableType.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit

protocol BindableType: AnyObject {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}

extension BindableType where Self: UIViewController {
    func bindViewModel(to model: Self.ViewModelType) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}

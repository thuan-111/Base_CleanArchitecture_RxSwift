//
//  MainViewController.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit
import RxSwift
import RxCocoa

final class MainViewController: UITabBarController, BindableType {
    // MARK: - Properties
    var viewModel: MainViewModel!
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit {
        logDeinit()
    }
    
    func bindViewModel() {
        let input = MainViewModel.Input()
        let output = viewModel.transform(input, disposeBag: disposeBag)
    }
}

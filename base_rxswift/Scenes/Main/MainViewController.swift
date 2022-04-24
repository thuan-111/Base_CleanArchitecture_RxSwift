//
//  MainViewController.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

final class MainViewController: UITabBarController, BindableType {
    // MARK: - Properties
    var viewModel: MainViewModel!
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
    }
    
    deinit {
        logDeinit()
    }
    
    func bindViewModel() {
        let input = MainViewModel.Input()
        _ = viewModel.transform(input, disposeBag: disposeBag)
    }
}

// MARK: - StoryboardSceneBased
extension MainViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.main
}

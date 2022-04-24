//
//  HomeViewController.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

final class HomeViewController: UIViewController, BindableType {
    // MARK: - Properties:
    var viewModel: HomeViewModel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        title = "Home"
    }
    
    func bindViewModel() {
        let input = HomeViewModel.Input()
        _ = viewModel.transform(input, disposeBag: disposeBag)
    }
}

// MARK: -StoryboardSceneBased
extension HomeViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.home
}

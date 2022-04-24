//
//  AccountViewController.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

final class AccountViewController: UIViewController, BindableType {
    // MARK: - Properties:
    var viewModel: AccountViewModel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        title = "Account"
    }
    
    deinit {
        logDeinit()
    }
    
    func bindViewModel() {
        let input = AccountViewModel.Input()
        _ = viewModel.transform(input, disposeBag: disposeBag)
    }
}

// MARK: -StoryboardSceneBased
extension AccountViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.account
}

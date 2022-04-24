//
//  AppViewModel.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import RxSwift
import RxCocoa

struct AppViewModel {
    let navigator: AppNavigatorType
    let useCase: AppUseCaseType
}

extension AppViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let output = Output()
        input.loadTrigger
            .drive(onNext: self.navigator.toMain)
            .disposed(by: disposeBag)
        
        return output
    }
}

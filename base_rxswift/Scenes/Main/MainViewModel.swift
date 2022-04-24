//
//  MainViewModel.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import RxSwift
import RxCocoa

struct MainViewModel {
    let useCase: MainUseCaseType
    let navigator: MainNavigatorType
}

extension MainViewModel: ViewModelType {
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let output = Output()
        
        return output
    }
}

//
//  HomeViewModel.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import RxSwift
import RxCocoa

struct HomeViewModel {
    let useCase: HomeUseCaseType
    let navigator: HomeNavigatorType
}

extension HomeViewModel: ViewModelType {
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let output = Output()
        
        return output
    }
}

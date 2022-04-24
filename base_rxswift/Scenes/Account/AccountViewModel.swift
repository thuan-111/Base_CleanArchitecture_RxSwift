//
//  AccountViewModel.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 24/04/2022.
//

import RxSwift
import RxCocoa

struct AccountViewModel {
    let useCase: AccountUseCaseType
    let navigator: AccountNavigatorType
}

extension AccountViewModel: ViewModelType {
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let output = Output()
        
        return output
    }
}

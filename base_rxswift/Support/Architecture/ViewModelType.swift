//
//  ViewModel.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import RxSwift

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output
}

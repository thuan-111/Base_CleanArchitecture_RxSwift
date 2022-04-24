//
//  AppUseCase.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import RxSwift

protocol AppUseCaseType {
    
}

struct AppUseCase: AppUseCaseType {
    let appGateway: AppGatewayType
}

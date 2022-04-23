//
//  AppGateway.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import Foundation

protocol AppGatewayType {
    func checkFirstRun() -> Bool
    func setFirstRun()
}

struct AppGateway: AppGatewayType {
    func checkFirstRun() -> Bool {
        return true
    }
    
    func setFirstRun() {
        
    }
}

//
//  GatewaysAssembler.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit

protocol GatewaysAssembler {
    func resolve() -> AppGatewayType
}

extension GatewaysAssembler where Self: DefaultAssembler {
    func resolve() -> AppGatewayType {
        return AppGateway()
    }
}

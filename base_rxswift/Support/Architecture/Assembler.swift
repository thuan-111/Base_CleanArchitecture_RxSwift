//
//  Assembler.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import Foundation

protocol Assembler: AnyObject,
                    HomeAssembler,
                    AccountAssembler,
                    MainAssembler,
                    GatewaysAssembler,
                    AppAssembler {
    
}

final class DefaultAssembler: Assembler {
    
}

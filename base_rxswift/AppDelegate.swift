//
//  AppDelegate.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 18/04/2022.
//

import UIKit
import RxSwift
import RxCocoa

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var assembler: Assembler = DefaultAssembler()
    var disposeBag = DisposeBag()
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        if NSClassFromString("XCTest") != nil {
            window.rootViewController = UnitTestViewController()
            window.makeKeyAndVisible()
        } else {
            bindViewModel(window: window)
        }
    }
    
    private func bindViewModel(window: UIWindow) {
        let vm: AppViewModel = assembler.resolve(window: window)
        let input = AppViewModel.Input(loadTrigger: Driver.just(()))
        _ = vm.transform(input, disposeBag: disposeBag)
    }
}

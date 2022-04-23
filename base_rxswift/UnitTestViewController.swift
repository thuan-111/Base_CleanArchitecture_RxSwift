//
//  UnitTestViewController.swift
//  base_rxswift
//
//  Created by Nguyen Van Thuan on 23/04/2022.
//

import UIKit
import Then

final class UnitTestViewController: UIViewController {
    var testingLabel: UILabel!
    var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        testingLabel = UILabel().then {
            $0.text = "Testing..."
            $0.textAlignment = .center
            $0.font = UIFont.systemFont(ofSize: 40, weight: .thin)
        }
        
        view.addSubview(testingLabel)
        
        indicator = UIActivityIndicatorView().then {
            $0.style = .medium
            $0.startAnimating()
        }
        
        view.addSubview(indicator)
        
        // constraint
        testingLabel.translatesAutoresizingMaskIntoConstraints = false
        testingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        indicator.topAnchor.constraint(equalTo: testingLabel.bottomAnchor, constant: 18).isActive = true
    }
}

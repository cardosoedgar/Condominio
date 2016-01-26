//
//  LaunchViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/14/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        let token = ""
        
        if token == "" {
            let loginVC = storyboard?.instantiateViewController(LoginViewController.self)
            navigationController?.pushViewController(loginVC!, animated: false)
        }
    }
}

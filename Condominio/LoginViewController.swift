//
//  ViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/7/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        hideNavBar()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBAction func registerButtonPressed(sender: UIButton) {
        let registerVC = storyboard?.instantiateViewController(RegisterViewController.self)
        navigationController?.pushViewController(registerVC!, animated: true)
    }
    
    @IBAction func login(sender: UIButton) {
        let selectCondominioVC = storyboard?.instantiateViewController(SelectCondominioViewController.self)
        navigationController?.pushViewController(selectCondominioVC!, animated: true)
    }
}


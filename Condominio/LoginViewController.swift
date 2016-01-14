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
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
   
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBAction func registerButtonPressed(sender: UIButton) {
        let registerVC = storyboard?.instantiateViewControllerWithIdentifier("RegisterViewController") as! RegisterViewController
        navigationController?.pushViewController(registerVC, animated: true)
    }
}


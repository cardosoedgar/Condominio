//
//  RegisterViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/14/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        hideNavBar()
    }
       
    @IBAction func backButtonPressed(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
}

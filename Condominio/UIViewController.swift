//
//  UIViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/25/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideNavBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func showNavBar() {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func setBarStyle(style: UIBarStyle) {
        navigationController?.navigationBar.barStyle = style
    }
    
    func hideNavBackButton() {
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    func setColorForNavBarItems() {
        let mainColor = UIColor(red: 204/255, green: 86/255, blue: 73/255, alpha: 1)
        navigationController?.navigationBar.tintColor = mainColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: mainColor]
    }
}

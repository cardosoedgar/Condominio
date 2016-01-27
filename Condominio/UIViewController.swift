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
    
    func showNavBar(backButtonHidden backButtonHidden: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
        setColorForNavBarItems()
        hideNavBackButton(backButtonHidden)
    }
    
    func setBarStyle(style: UIBarStyle) {
        navigationController?.navigationBar.barStyle = style
    }
    
    func hideNavBackButton(backButtonHidden: Bool) {
        navigationItem.setHidesBackButton(backButtonHidden, animated: false)
    }
    
    func setColorForNavBarItems() {
        let mainColor = UIColor(red: 204/255, green: 86/255, blue: 73/255, alpha: 1)
        navigationController?.navigationBar.tintColor = mainColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: mainColor]
    }
    
    func setControllerTitle(title: String) {
        navigationController?.navigationBar.topItem?.title = title
        navigationController?.navigationBar.translucent = true
    }
    
    func setButtonToRightTabBar(button: UIBarButtonItem?) {
        tabBarController?.navigationItem.rightBarButtonItem = button
    }
}

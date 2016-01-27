//
//  CondominioTabController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/26/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class CondominioTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
    }

    override func viewWillAppear(animated: Bool) {
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

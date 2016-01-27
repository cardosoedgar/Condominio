//
//  SelectCondominioViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/14/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class SelectCondominioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        showNavBar(backButtonHidden: true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeCustomCell(BasicCell.self)
        
        cell.titleLabel.text = "Ed. Ciclano Ribaldo"
        cell.descriptionLabel.text = "Rua Fulano de Tal, 351"
        cell.detailLabel.text = "Solicitação Pendente"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        goToCondominio()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func goToCondominio() {
        let storyboard = UIStoryboard(storyboard: .Condominio)
        let condominioVC = storyboard.instantiateViewController(CondominioTabController.self)
        navigationController?.pushViewController(condominioVC, animated: true)
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

//
//  MuralViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/26/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class MuralViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        setControllerTitle("Mural de Avisos")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeCustomCell(MuralCell.self)
     
        if indexPath.row == 0 {
            cell.setCellImportant()
        } else if indexPath.row == 3 {
            cell.setCellPoll()
        } else {
            cell.setCellNormal()
        }
        
        cell.titleLabel.text = "Falta de Água"
        cell.descriptionLabel.text = "cano quebrado, previsão de voltar as 16h"
        cell.dateLabel.text = "29/01"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
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

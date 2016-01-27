//
//  PortariaViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/26/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class PortariaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        setControllerTitle("Portaria")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeCustomCell(PortariaCell.self)
        
        cell.titleLabel.text = "Encomenda"
        cell.descriptionLabel.text = "Para: Daisy Ridley"
        cell.detailLabel.text = "Na Portaria"
        
        if indexPath.section == 0 || indexPath.section == 3 {
            cell.iconImage.image = UIImage(named: "icon_mail")
        } else if indexPath.section == 4 || indexPath.section == 2 {
            cell.iconImage.image = UIImage(named: "icon_pizza")
        } else {
            cell.iconImage.image = UIImage(named: "icon_user")
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 0 : 5
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clearColor()
        return headerView
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
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

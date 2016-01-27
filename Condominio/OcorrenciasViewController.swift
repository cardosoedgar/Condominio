//
//  OcorrenciasViewController.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/26/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class OcorrenciasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        setControllerTitle("Ocorrências")
        addButtonNavBar()
    }
    
    func addButtonNavBar() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addOcorrencia")
        setButtonToRightTabBar(addButton)
    }
    
    func addOcorrencia() {
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeCustomCell(BasicCell.self)
        
        cell.titleLabel.text = "Luz do corredor queimada"
        cell.descriptionLabel.text = "luz do 5º andar aparenta estar queimada."
        cell.detailLabel.text = "Pendente"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
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

//
//  UITableView.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/27/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeCustomCell<cell: UITableViewCell where cell: TableViewIdentifiable>(_: cell.Type) -> cell {
        guard let customCell = self.dequeueReusableCellWithIdentifier(cell.tableViewIdentifier) as? cell else {
            fatalError("Couldn't instantiate cell with identifier \(cell.tableViewIdentifier)")
        }
        
        return customCell
    }
}

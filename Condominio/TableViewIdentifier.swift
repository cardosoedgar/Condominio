//
//  TableViewIdentifier.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/27/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

protocol TableViewIdentifiable {
    static var tableViewIdentifier: String { get }
}

extension TableViewIdentifiable where Self: UITableViewCell {
    static var tableViewIdentifier: String {
        return String(self)
    }
}

extension UITableViewCell: TableViewIdentifiable { }

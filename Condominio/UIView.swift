//
//  UIView.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/27/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

extension UIView {
    func maskRoundCorners(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

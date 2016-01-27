//
//  CircleImage.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/27/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = frame.height/2
        layer.masksToBounds = true
    }
}

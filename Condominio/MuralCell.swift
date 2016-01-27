//
//  MuralCell.swift
//  Condominio
//
//  Created by Edgar Cardoso on 1/27/16.
//  Copyright © 2016 Edgar Cardoso. All rights reserved.
//

import UIKit

class MuralCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        authorImage.maskRoundCorners(4)
    }
    
    func setCellImportant() {
        let backgroundColor = UIColor(red: 204/255, green: 86/255, blue: 73/255, alpha: 1)
        let labelColor = UIColor.whiteColor()
        setColorForContent(labelColor, backgroundColor: backgroundColor)
        setImageBorder()
    }
    
    func setCellNormal() {
        let backgroundColor = UIColor.whiteColor()
        let labelColor = UIColor.blackColor()
        setColorForContent(labelColor, backgroundColor: backgroundColor)
        removeImageBorder()
    }
    
    func setCellPoll() {
        let backgroundColor = UIColor(red: 125/255, green: 102/255, blue: 87/255, alpha: 1)
        let labelColor = UIColor.whiteColor()
        setColorForContent(labelColor, backgroundColor: backgroundColor)
        setImageBorder()
    }
    
    func setColorForContent(labelColor: UIColor, backgroundColor: UIColor) {
        dateLabel.textColor = labelColor
        titleLabel.textColor = labelColor
        descriptionLabel.textColor = labelColor
        bgView.backgroundColor = backgroundColor
    }
    
    func setImageBorder() {
        authorImage.layer.borderColor = UIColor.whiteColor().CGColor
        authorImage.layer.borderWidth = 1.0
    }
    
    func removeImageBorder() {
        authorImage.layer.borderColor = nil
        authorImage.layer.borderWidth = 0
    }
}
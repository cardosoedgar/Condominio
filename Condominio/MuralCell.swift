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
        let selectedBackground = UIColor(red: 212/255, green: 147/255, blue: 140/255, alpha: 1)
        let backgroundColor = UIColor(red: 204/255, green: 86/255, blue: 73/255, alpha: 1)
        let labelColor = UIColor.whiteColor()
        setColorForContent(labelColor, backgroundColor: backgroundColor)
        setSelectedBackground(selectedBackground)
        setImageBorder()
    }
    
    func setCellNormal() {
        let selectedBackground = UIColor(red: 227/255, green: 228/255, blue: 232/255, alpha: 1.0)
        let backgroundColor = UIColor.whiteColor()
        let labelColor = UIColor.blackColor()
        setColorForContent(labelColor, backgroundColor: backgroundColor)
        setSelectedBackground(selectedBackground)
        removeImageBorder()
    }
    
    func setCellPoll() {
        let selectedBackground = UIColor(red: 201/255, green: 177/255, blue: 160/255, alpha: 1)
        let backgroundColor = UIColor(red: 125/255, green: 102/255, blue: 87/255, alpha: 1)
        let labelColor = UIColor.whiteColor()
        setColorForContent(labelColor, backgroundColor: backgroundColor)
        setSelectedBackground(selectedBackground)
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
    
    func setSelectedBackground(color: UIColor) {
        let view = UIView()
        view.backgroundColor = color
        selectedBackgroundView = view
    }
}
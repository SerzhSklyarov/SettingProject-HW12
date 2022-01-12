//
//  SimpleCell.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import Foundation
import UIKit

class SimpleCell: ParentCell {
    static let identifier = "SimpleCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with model: SimpleCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
    }
}

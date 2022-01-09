//
//  SwitchCell.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import Foundation
import UIKit

class SwitchCell: ParentCell {
    static let identifier = "SwitchCell"
    
    private let switchView: UISwitch = {
        let switchView = UISwitch()
        switchView.sizeToFit()
        switchView.translatesAutoresizingMaskIntoConstraints = false
        
        return switchView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupHierarchy() {
        super.setupHierarchy()
        contentView.addSubview(switchView)
    }
    
    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            switchView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            switchView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconBox.backgroundColor = nil
        iconImage.image = nil
        cellLabel.text = nil
        switchView.isOn = false
    }
    
    func configure(with model: SwitchCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
        switchView.isOn = model.state
    }
}


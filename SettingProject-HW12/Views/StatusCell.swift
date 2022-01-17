//
//  StatusCell.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import Foundation
import UIKit

class StatusCell: ParentCell {
    static let identifier = "StatusCell"
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
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
        contentView.addSubview(statusLabel)
    }
    
    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            statusLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            statusLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
        ])
    }
    
    func configure(with model: StatusCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
        statusLabel.text = model.status
    }
}

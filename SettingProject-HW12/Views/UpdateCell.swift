//
//  UpdateCell.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import Foundation
import UIKit

class UpdateCell: ParentCell {
    static let identifier = "UpdateCell"
    
    private let updateBox: UIView = {
        let updateBox = UIView()
        updateBox.layer.cornerRadius = 15
        updateBox.translatesAutoresizingMaskIntoConstraints = false
        
        return updateBox
    }()
    
    private let updateLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .systemRed
        label.sizeToFit()
        label.frame = CGRect(x: 10, y: 10, width: 10, height: 10)
        label.clipsToBounds = true
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupHierarchy() {
        super.setupHierarchy()
        contentView.addSubview(updateBox)
        updateBox.addSubview(updateLabel)
    }
    
    override func setupLayout() {
        super.setupLayout()
        NSLayoutConstraint.activate([
            updateBox.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            updateBox.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            updateLabel.centerXAnchor.constraint(equalTo: updateBox.centerXAnchor),
            updateLabel.centerYAnchor.constraint(equalTo: updateBox.centerYAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(with model: UpdateCellModel) {
        iconBox.backgroundColor = model.iconColor
        iconImage.image = model.icon
        cellLabel.text = model.title
        updateBox.backgroundColor = model.updateColor
        updateLabel.text = model.updateTitle
    }
}

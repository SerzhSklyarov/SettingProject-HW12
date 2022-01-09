//
//  ParentCell.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import Foundation
import UIKit

class ParentCell: UITableViewCell {
    
    // MARK: - Views
    
    let iconBox: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let iconImage: UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .white
        icon.translatesAutoresizingMaskIntoConstraints = false
        
        return icon
    }()
    
    let cellLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - Setup
    
    func setupHierarchy() {
        
        contentView.addSubview(cellLabel)
        contentView.addSubview(iconBox)
        iconBox.addSubview(iconImage)
    }
    
    func setupLayout() {
        let boxSize: CGFloat = contentView.frame.size.height - 12
        NSLayoutConstraint.activate([
            iconBox.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            iconBox.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconBox.widthAnchor.constraint(equalToConstant: boxSize),
            iconBox.heightAnchor.constraint(equalToConstant: boxSize),
            
            iconImage.centerXAnchor.constraint(equalTo: iconBox.centerXAnchor),
            iconImage.centerYAnchor.constraint(equalTo: iconBox.centerYAnchor),
            iconImage.widthAnchor.constraint(equalToConstant: boxSize * 0.70),
            iconImage.heightAnchor.constraint(equalToConstant: boxSize * 0.70),
            
            cellLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cellLabel.leftAnchor.constraint(equalTo: iconBox.rightAnchor, constant: 25)
        ])
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Metrics
    
}

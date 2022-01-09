//
//  Model.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import Foundation
import UIKit

struct SimpleCellModel {
    let title: String
    let icon: UIImage?
    let iconColor: UIColor
}

struct SwitchCellModel {
    let title: String
    let icon: UIImage?
    let iconColor: UIColor
    var state: Bool
}

struct StatusCellModel {
    let title: String
    let icon: UIImage?
    let iconColor: UIColor
    let status: String
}

struct UpdateCellModel {
    let title: String
    let icon: UIImage?
    let iconColor: UIColor
    let updateTitle: String
    let updateColor: UIColor
}

enum CellType {
    case simpleCell(model: SimpleCellModel)
    case switchCell(model: SwitchCellModel)
    case statusCell(model: StatusCellModel)
    case updateCell(model: UpdateCellModel)
}

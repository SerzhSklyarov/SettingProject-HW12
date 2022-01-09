//
//  Section.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import UIKit

struct Section {
    let options: [CellType]
}

extension Section {
    static func createSections() -> [Section] {
        [Section(options: [
            .switchCell(model: SwitchCellModel(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconColor: .systemOrange, state: false)),
            .statusCell(model: StatusCellModel(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconColor: .systemBlue, status: "Не подключено")),
            .statusCell(model: StatusCellModel(title: "Bluetooth", icon: UIImage(named: "icons8-блютуз-50"), iconColor: .systemBlue, status: "Вкл.")),
            .simpleCell(model: SimpleCellModel(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconColor: .systemGreen)),
            .simpleCell(model: SimpleCellModel(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconColor: .systemGreen)),
            .switchCell(model: SwitchCellModel(title: "VPN", icon: UIImage(named: "icons8-значок-строки-состояния-vpn-50"), iconColor: .systemBlue, state: false))
        ]),
         
         Section(options: [
            .simpleCell(model: SimpleCellModel(title: "Уведомления", icon: UIImage(named: "icons8-центр-уведомлений-50"), iconColor: .systemRed)),
            .simpleCell(model: SimpleCellModel(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconColor: .systemRed)),
            .simpleCell(model: SimpleCellModel(title: "Не беспокоить", icon: UIImage(systemName: "moon.fill"), iconColor: .systemPurple)),
            .simpleCell(model: SimpleCellModel(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconColor: .systemPurple))
         ]),
         
         Section(options: [
            .updateCell(model: UpdateCellModel(title: "Основные", icon: UIImage(systemName: "gear"), iconColor: .systemGray, updateTitle: "1", updateColor: .systemRed)),
            .simpleCell(model: SimpleCellModel(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconColor: .systemGray)),
            .simpleCell(model: SimpleCellModel(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconColor: .systemBlue)),
            .simpleCell(model: SimpleCellModel(title: "Экран Домой", icon: UIImage(systemName: "paintpalette"), iconColor: .systemGray))
         ])]
    }
}

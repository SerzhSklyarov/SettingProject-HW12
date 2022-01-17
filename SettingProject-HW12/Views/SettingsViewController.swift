//
//  ViewController.swift
//  SettingProject-HW12
//
//  Created by Wizzard Sklyarov on 2022. 01. 09..
//

import UIKit

class SettingsViewController: UIViewController {
    
    private var models = [Section]()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        
        tableView.register(SimpleCell.self, forCellReuseIdentifier: SimpleCell.identifier)
        tableView.register(SwitchCell.self, forCellReuseIdentifier: SwitchCell.identifier)
        tableView.register(StatusCell.self, forCellReuseIdentifier: StatusCell.identifier)
        tableView.register(UpdateCell.self, forCellReuseIdentifier: UpdateCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        configureTableView()
        configureSections()
    }
    
    private func configureTableView() {
        tableView.rowHeight = 50
        tableView.frame = view.bounds
        view.addSubview(tableView)
    }
    
    private func configureSections() {
        models = Section.createSections()
    }
}

// MARK: - UITableViewDataSource

extension SettingsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]
        
        switch model {
        case .simpleCell(model: let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SimpleCell.identifier, for: indexPath) as? SimpleCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case .switchCell(model: let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchCell.identifier, for: indexPath) as? SwitchCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case .statusCell(model: let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: StatusCell.identifier, for: indexPath) as? StatusCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case .updateCell(model: let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: UpdateCell.identifier, for: indexPath) as? UpdateCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }
    }
    
}

// MARK: - UITableViewDelegate

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let type = models[indexPath.section].options[indexPath.row]
        
        switch type {
        case .simpleCell(model: let model):
            print("выбрана ячейка \(model.title)")
        case .statusCell(model: let model):
            print("выбрана ячейка \(model.title)")
        case .updateCell(model: let model):
            print("выбрана ячейка \(model.title)")
        case .switchCell(model: let model):
            print("выбрана ячейка \(model.title)")
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


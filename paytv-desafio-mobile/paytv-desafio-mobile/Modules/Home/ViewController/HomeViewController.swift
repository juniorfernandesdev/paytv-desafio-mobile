//
//  HomeViewController.swift
//  paytv-desafio-mobile
//
//  Created by Junior Fernandes on 15/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    private let headerView = HeaderHomeView()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.bounces = false
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        tableView.backgroundColor = .white
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primaryColor
        
        layoutSubviews()
    }
    
    private func layoutSubviews() {
        configureView()
        configureConstraints()
    }
    
    private func configureView() {
        view.addSubview(headerView)
        view.addSubview(tableView)
        
    }
    
    private func configureConstraints() {
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 150),
            
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        ])
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

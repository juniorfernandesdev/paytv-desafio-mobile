//
//  FavoriteViewController.swift
//  paytv-desafio-mobile
//
//  Created by Junior Fernandes on 15/10/22.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    private lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primaryColor
    }
}

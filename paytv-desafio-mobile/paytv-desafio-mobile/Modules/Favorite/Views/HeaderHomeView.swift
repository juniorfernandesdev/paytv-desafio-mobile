//
//  HeaderHomeView.swift
//  paytv-desafio-mobile
//
//  Created by Junior Fernandes on 15/10/22.
//

import UIKit

final class HeaderHomeView: UIView {
    //MARK: -- Properties
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blackColor
        return view
    }()
    
    lazy var logoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "globoplay"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textColor = .whiteColor
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutSubviews()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -- Methods
    internal override func layoutSubviews() {
        configureView()
        configureConstraints()
    }
    
    private func configureView() {
        clipsToBounds = true
        addSubview(containerView)
        containerView.addSubview(logoLabel)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 150),
            
            logoLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            logoLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20)
        ])
    }
}

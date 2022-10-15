//
//  TabBarViewController.swift
//  paytv-desafio-mobile
//
//  Created by Junior Fernandes on 15/10/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    private func setupTabBarController() {
        let homeScreen = UINavigationController(rootViewController: HomeViewController())
        let favoriteScreen = UINavigationController(rootViewController: FavoriteViewController())
        self.setViewControllers([homeScreen, favoriteScreen], animated: true)
        
        configTabBar()
    }
    
    private func configTabBar() {
        tabBar.backgroundColor = .black
        tabBar.isTranslucent = false
        
        guard let itens = tabBar.items else { return }
        
        itens[0].title = "Início"
        itens[0].image = UIImage(named: "home")
        
        itens[1].title = "Minha lista"
        itens[1].image = UIImage(named: "star_rate")
        
        tabBar.unselectedItemTintColor = .secundaryBlackColor
        tabBar.tintColor = .whiteColor
    }
}

//
//  ViewController.swift
//  Navigation
//
//  Created by Сергей Прокопьев on 20.04.2022.
//

import UIKit

class ViewController: UITabBarController {
    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        setupControllers()
    }
    private func setupControllers() {
        
        let feedNC = UINavigationController(rootViewController: feedVC)
        feedVC.tabBarItem.title = "Лента"
        feedVC.tabBarItem.image = UIImage(systemName: "star")
        feedVC.navigationItem.title = "Лента"
        
        let profileNC = UINavigationController(rootViewController: profileVC)
        profileVC.tabBarItem.title = "Профиль"
        profileVC.tabBarItem.image = UIImage(systemName: "folder")
        profileVC.navigationItem.title = "Профиль"
        
        viewControllers = [feedNC, profileNC]
    }
}

//
//  PostViewController.swift
//  Navigation
//
//  Created by Сергей Прокопьев on 26.04.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        makeBarButtomItem()
    }
    
    private func makeBarButtomItem() {
        let barButtonItem = UIBarButtonItem(title: "Новый экран", style:.plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    @objc private func tapAction()  {
        let vc = InfoViewController()
        vc.title = "Новый"
        present(vc, animated: true)
    }
}

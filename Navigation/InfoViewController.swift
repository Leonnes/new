//
//  ThirdViewController.swift
//  Navigation
//
//  Created by Сергей Прокопьев on 30.04.2022.
//

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        makeButton()
        print("hee")
    }
    private func makeButton() {
        let button = UIButton (frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Жми!", for:.normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(tapAction), for:.touchUpInside)
        view.addSubview(button)
//       print ("ff")
    }
    
    @objc private func tapAction() {
        let alert = UIAlertController (title:"Перейти назад", message: "Вы точно хотите выйти?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Выйти", style: .default) {_ in self.dismiss(animated: true)
            self.navigationController?.popViewController(animated: true)
            print ("кнопку нажали")
        }
        let canccelAction = UIAlertAction(title: "Отмена", style:.destructive)
        alert.addAction(canccelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
//        print ("кнопку нажали")
    }
}


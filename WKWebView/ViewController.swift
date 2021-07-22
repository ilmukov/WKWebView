//
//  ViewController.swift
//  WKWebView
//
//  Created by Stepan Ilmukov on 22.07.2021.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Показать страницу", for: .normal)
        button.backgroundColor = .link
        button.layer.cornerRadius = 5
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 220, height: 50)
        button.center = view.center
    }

    @objc private func didTapButton() {
        guard let url = URL(string: "https://yandex.ru") else {
            return
        }
        let vc = WebViewController(url: url, title: "яндекс")
        let navVc = UINavigationController(rootViewController: vc)
        present(navVc, animated: true)
    }
}


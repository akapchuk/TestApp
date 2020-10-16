//
//  CustomViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/15/20.
//

import Foundation
import UIKit

class CustomViewController: UIViewController {
    
    var customButton = CustomButton()
    
    override func loadView() {
        // xib файлы добавляем сюда
        super.loadView()
        view.backgroundColor = .orange
        
        /*
        // Создаем вью
        let container = UIView(frame: CGRect(x: 50, y: 50, width: 150, height: 150))
//        let container = UIView()
        view.addSubview(container)
        container.backgroundColor = .white
        
//        container.addSubview(UIButton)
        
        // Констрейнты
        container.translatesAutoresizingMaskIntoConstraints = false // фолс чтобы не использовал фреймы
        // Anchor - это констрейнт. Задаем его                 // Активируем констрейнт
        container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        container.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        container.heightAnchor.constraint(equalToConstant: 100).isActive = true

    
        // Добавляем на родительскую
        */
        
        // Кнопка
        let loginButton = UIButton()
        view.addSubview(loginButton)
        loginButton.backgroundColor = .red
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        loginButton.layer.cornerRadius = 8
        loginButton.layer.borderWidth = 3.0
        loginButton.layer.borderColor = UIColor.darkGray.cgColor
        
        
    }
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtomConstraints()
        addActionToButton()
        customButton.setTitle("Login", for: .normal)
    }
    
    func setupButtomConstraints() {
        view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        customButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 200).isActive = true
    }
    
    func addActionToButton() {
        customButton.addTarget(self, action: #selector(customButtonTapped), for: .touchUpInside)
    }
    
    @objc func customButtonTapped() {
        customButton.shakeButton()
    }
}

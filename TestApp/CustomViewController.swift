// CustomViewController.swift
//  TestApp
//  Created by Саша Капчук on 10/15/20.

import UIKit
import Foundation

class CustomViewController: UIViewController {
    
    // MARK: VIEW ELEMENTS
    let greetingLabel     = UILabel()
    let loginLabel        = UILabel()
    let loginTextField    = UITextField()
    let passwordLabel     = UILabel()
    let passwordTextField = UITextField()
    let loginButton       = UIButton()
    
    
    override func loadView() {
        // xib файлы добавляем сюда
        super.loadView()
        view.backgroundColor = .systemIndigo
        
        
        //-----LABEL GREETING-----
        
        // MARK: Label Greeting
        view.addSubview(greetingLabel)
        greetingLabel.text = "Hello you!"
        
        // Внешний вид Label Greeting
        greetingLabel.textAlignment = .center
        greetingLabel.textColor = .white
        greetingLabel.backgroundColor = .systemBlue
        greetingLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 26)
        greetingLabel.numberOfLines = 2
        greetingLabel.layer.cornerRadius = 8
        greetingLabel.clipsToBounds = true
        greetingLabel.layer.cornerRadius = 8
        greetingLabel.layer.borderWidth  = 3.0
        greetingLabel.layer.borderColor  = UIColor.white.cgColor
        
        // Констрейнты для Label Greeting
//        greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        greetingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
//        greetingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        greetingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        
        
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        greetingLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        greetingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greetingLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -540).isActive = true
        
        //-----LABEL LOGIN-----
        
        // MARK: Label - Login
        view.addSubview(loginLabel)
        
        // Внешний вид loginLabel
        loginLabel.text = "Введите логин"
        loginLabel.textColor = .white
        loginLabel.textAlignment = .left
        
        // Констрейнты для Label - Login
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        loginLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -460).isActive = true

        //-----LOGIN TEXT FIELD-----
        
        // MARK: Text Field - Enter your login
        view.addSubview(loginTextField)
        loginTextField.returnKeyType = .done
        loginTextField.autocapitalizationType = .words
        loginTextField.autocorrectionType = .yes
        loginTextField.clipsToBounds = true
        loginTextField.backgroundColor = .white
        loginTextField.layer.cornerRadius = 8
        loginTextField.layer.borderWidth  = 1.5
        loginTextField.layer.borderColor  = UIColor.lightGray.cgColor
        loginTextField.placeholder = "Enter email or tel. number"
        
        
        // Констрейнты для Login Text Field
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        loginTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -400).isActive = true
        
        //-----LABEL PASSWORD-----
        
        // MARK: Label Password
        view.addSubview(passwordLabel)
        
        // Внешний вид passwordLabel
        passwordLabel.text = "Введите пароль"
        passwordLabel.textColor = .white
        passwordLabel.textAlignment = .left
        
        // Констрейнты для Label - Login
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        passwordLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -350).isActive = true
        
        //-----PASSWORD TEXT FIELD-----
        
        // MARK: Text Field - Password
        view.addSubview(passwordTextField)
        passwordTextField.returnKeyType = .done
        passwordTextField.autocapitalizationType = .words
        passwordTextField.autocorrectionType = .yes
        passwordTextField.clipsToBounds = true
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderWidth  = 1.5
        passwordTextField.layer.borderColor  = UIColor.lightGray.cgColor
        passwordTextField.placeholder = "Enter your password"
        
        // Password Text Field Constraints
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -290).isActive = true
        
        //-----BUTTON LOGIN-----
        
        // MARK: Button Login
        view.addSubview(loginButton)
        
        // Внешний вид кнопки
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font   = UIFont(name: "AvenirNext-DemiBold", size: 18)
        loginButton.layer.cornerRadius = 8
        loginButton.layer.borderWidth  = 3.0
        loginButton.layer.borderColor  = UIColor.white.cgColor
        loginButton.backgroundColor    = .systemTeal
        
        // Констрейнты для кнопки
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        
        // Настройки тени
        loginButton.layer.shadowColor   = UIColor.black.cgColor
        loginButton.layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        loginButton.layer.shadowRadius  = 8
        loginButton.layer.shadowOpacity = 0.5
        loginButton.clipsToBounds       = true
        loginButton.layer.masksToBounds = false
        
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
    
   
    




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

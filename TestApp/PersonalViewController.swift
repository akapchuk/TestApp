//
//  PersonalViewController.swift
//  TestApp
//  Created by Саша Капчук on 10/18/20.


import UIKit


// MARK: Homework #13
protocol ButtonConfiguration {
    var backgroundColor: UIColor { get }
    var textColor: UIColor { get }
    var text: String { get }
}

struct AnotherButton: ButtonConfiguration {
    var backgroundColor: UIColor
    var textColor: UIColor
    var text: String
    init(backgroundColor: UIColor, textColor: UIColor, text: String) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.text = text
    }
}

func setupButton(config: ButtonConfiguration, button: UIButton) {
    button.backgroundColor = config.backgroundColor
    button.setTitleColor(config.textColor, for: .normal)
    button.setTitle(config.text, for: .normal)
}



class PersonalViewController: UIViewController {
    
    let greetingLabel: PersonalGreetingLabel    = PersonalGreetingLabel()
    let loginLabel: PersonalDescriptionLabel    = PersonalDescriptionLabel()
    let loginTextField: PersonalTextField       = PersonalTextField()
    let passwordLabel: PersonalDescriptionLabel = PersonalDescriptionLabel()
    let passwordTextField: PersonalTextField    = PersonalTextField()
    let loginButton: PersonalButton = {
        let loginButton = PersonalButton()
        setupButton(config: AnotherButton(backgroundColor: .red, textColor: .red, text: "s"), button: loginButton)
        return loginButton
    }()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .systemIndigo
        
        // MARK: Greeting UILabel
        view.addSubview(greetingLabel)
        greetingLabel.text = "Hello you!"
        greetingLabelConstraints()

        // MARK: Login UILabel
        view.addSubview(loginLabel)
        loginLabel.text = "Login"
        loginLabelConstraints()

        // MARK: Login UITextField
        view.addSubview(loginTextField)
        loginTextField.placeholder = "Enter your login"
        loginTextFieldConstraints()

        // MARK: Password UILabel
        view.addSubview(passwordLabel)
        passwordLabel.text = "Password"
        passwordLabelConstraints()
        
        // MARK: Password UITextField
        view.addSubview(passwordTextField)
        passwordTextField.placeholder = "Enter your password"
        passwordTextFieldConstraints()
        
        // MARK: Login UIButton
        view.addSubview(loginButton)
        loginButton.setTitle("Login", for: .normal)
        loginButtonConstraints()

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: All Constraints
    func greetingLabelConstraints() {
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        greetingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        greetingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greetingLabel.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
    
    func loginLabelConstraints() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        loginLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        loginLabel.bottomAnchor.constraint(equalTo: greetingLabel.topAnchor, constant: 95).isActive = true
        
        //        ПОЧЕМУ ЭТИ КОНСТРЕЙНТЫ НЕ СРАБОТАЛИ (СРАБОТАЛИ ПОСЛЕДНИЕ ДВА)
        //        loginLabel.leftAnchor.constraint(equalTo: loginTextField.leftAnchor).isActive = true
        //        loginLabel.bottomAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: -20).isActive = true
    }
    
    func loginTextFieldConstraints() {
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        loginTextField.bottomAnchor.constraint(equalTo: greetingLabel.topAnchor, constant: 150).isActive = true
    }
    
    func passwordLabelConstraints() {
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: 95).isActive = true
    }
    
    func passwordTextFieldConstraints() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: 150).isActive = true
    }
    
    func loginButtonConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: loginTextField.topAnchor, constant: 210).isActive = true
    }

}

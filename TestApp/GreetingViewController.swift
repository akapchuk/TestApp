//
//  GreetingViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/11/20.
//

import UIKit

class GreetingViewController: UIViewController {
    
    @IBOutlet weak var createdLogin: UILabel!
    
    var textFromCreatedLogin: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Передаем в заголовок имя пользователя
        title = textFromCreatedLogin
        // Передаем в лейбл имя пользователя
        createdLogin.text = "Hello, \(textFromCreatedLogin!)"
    }

    @IBAction func goToroot(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}

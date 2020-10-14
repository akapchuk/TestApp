//
//  StartPageViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/14/20.
//

import UIKit

class StartPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func pushButtonLogin(_ sender: UIButton) {
        // Инициализирую view XIB файла
        let loginView = ProfileViewController(nibName: "LoginPageViewController", bundle: nil)
        present(loginView, animated: true, completion: nil)
    }
    
    
    @IBAction func pushSignUpButton(_ sender: UIButton) {
        let signUpView = ProfileViewController(nibName: "LoginPageViewController", bundle: nil)
        present(signUpView, animated: true, completion: nil)
    }
}

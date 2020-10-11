//
//  SignUpViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/10/20.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Кнопка Sign Up
    @IBAction func buttonSignUp(_ sender: UIButton) {
        // Объект на основе представления о сториборде
        let helloVC = storyboard?.instantiateViewController(withIdentifier: "HelloPageViewController") as! HelloPageViewController
        // Даем команду для Navigation Controller для перехода
        navigationController?.pushViewController(helloVC, animated: true)
    }
    
}

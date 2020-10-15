//
//  LoginPageViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/14/20.
//

import UIKit

class LoginPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func pushClickHereButton(_ sender: UIButton) {
        let signUpPage = SignUpPageViewController(nibName: "SignUpPageViewController", bundle: nil)
        self.present(signUpPage, animated: true, completion: nil)
    }
    
}

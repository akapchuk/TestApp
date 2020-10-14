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
        let clickHereButton = ProfileViewController(nibName: "SignUpPageViewController", bundle: nil)
        present(clickHereButton, animated: true, completion: nil)
    }
    
}

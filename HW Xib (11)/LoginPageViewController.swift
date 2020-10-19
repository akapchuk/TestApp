//
//  LoginPageViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/14/20.
//

import UIKit

class LoginPageViewController: UIViewController {
    
    // xib на весь экран
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalPresentationStyle = .fullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func pushClickHereButton(_ sender: UIButton) {
        
// Не инициализировать зановго Sign Up, а вернуть
        if presentingViewController is SignUpPageViewController {
            dismiss(animated: true, completion: nil)
        } else if presentingViewController is StartPageViewController {
            let signUpPage = SignUpPageViewController(nibName: "SignUpPageViewController", bundle: nil)
            self.present(signUpPage, animated: true, completion: nil)
        }
        
//        let signUpPage = SignUpPageViewController(nibName: "SignUpPageViewController", bundle: nil)
//        self.present(signUpPage, animated: true, completion: nil)
    }
    
    
}

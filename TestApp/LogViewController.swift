//
//  LogViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/11/20.
//

import UIKit

class LogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    @IBAction func buttonClickHere(_ sender: UIButton) {
        let signUpPageVC = storyboard?.instantiateViewController(withIdentifier: "SignViewController") as! SignViewController
        navigationController?.pushViewController(signUpPageVC, animated: true)
    }
}

//
//  ProfileViewController.swift
//  TestApp
//
//  Created by Саша Капчук on 10/12/20.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    
    
    override func loadView() {
        super.loadView()
        print("loadview")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }


}

//
//  HW14ViewController.swift
//  TestApp
//  Created by Саша Капчук on 26.11.20.
//

import UIKit

class HW14ViewController: UIViewController {

    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        button.setTitle("Go To Nav Controller", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc private func didTapButton() {
        let rootVC = secondVC()
        
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
}

class secondVC: UIViewController {
    
    private let button = UIButton()
    
    private let buttonTabBar: UIButton = {
        let buttonTabBar = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        buttonTabBar.setTitle("Show Tab Bar menu", for: .normal)
        buttonTabBar.backgroundColor = .yellow
        buttonTabBar.setTitleColor(.black, for: .normal)
        return buttonTabBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        title = "Welcome"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                   style: .plain,
                                                                   target: self,
                                                                   action: #selector(dismissSelf))
        
        view.addSubview(buttonTabBar)
        buttonTabBar.addTarget(self,
                         action: #selector(didTapButtonTabBar),
                         for: .touchUpInside)
        
        button.setTitle("Push another controller", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        buttonTabBar.center = view.center
        
    }
    
    @objc private func didTapButton() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTapButtonTabBar() {
        // Create and present UITabBarController
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        
        vc1.title = "Home"
        vc2.title = "Contacts"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title = "Settings"
        
        // Визуализация иконом Tab Bar
        UITabBar.appearance().barTintColor = .systemIndigo
        UITabBar.appearance().tintColor = .yellow
        
        // Список VC для Tab bar
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: true)
        
        
        // Настройка иконок для Tab Bar
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        
        for x in 0..<items.count {
            items[x].badgeValue = "1"
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        
        present(tabBarVC, animated: true)
    }
}



// Класс VC для каждого Tab bar
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                   style: .plain,
                                                                   target: self,
                                                                   action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        title = "Contacts"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                   style: .plain,
                                                                   target: self,
                                                                   action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Help"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                   style: .plain,
                                                                   target: self,
                                                                   action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "About"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                   style: .plain,
                                                                   target: self,
                                                                   action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Settings"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                   style: .plain,
                                                                   target: self,
                                                                   action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }

}

//
//  CustomButton.swift
//  TestApp
//
//  Created by Саша Капчук on 10/16/20.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    
    func setUpButton() {
        setShadow()
        setTitleColor(.white, for: .normal)
        
        backgroundColor = .blue
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius = 8
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.darkGray.cgColor
    }
    

    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
    func shakeButton() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let toPoint = CGPoint(x: center.x + 8, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        let fromPoint = CGPoint(x: center.x - 8, y: center.y)
        let fromValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
    
}

/*
 override func viewDidLoad() {
     super.viewDidLoad()
     setupButtomConstraints()
     addActionToButton()
     customButton.setTitle("Login", for: .normal)
 }
 
 func setupButtomConstraints() {
     view.addSubview(customButton)
     customButton.translatesAutoresizingMaskIntoConstraints = false
     customButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
     customButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
     customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
     customButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 200).isActive = true
 }
 
 func addActionToButton() {
     customButton.addTarget(self, action: #selector(customButtonTapped), for: .touchUpInside)
 }
 
 @objc func customButtonTapped() {
     customButton.shakeButton()
 }
}

 */

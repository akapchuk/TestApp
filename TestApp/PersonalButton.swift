//
//  PersonalButton.swift
//  TestApp
//
//  Created by Саша Капчук on 10/18/20.
//

import UIKit

class PersonalButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpButton() {
        
        // Button parameters
        setTitleColor(.white, for: .normal)
        titleLabel?.font   = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius = 8
        layer.borderWidth  = 3.0
        layer.borderColor  = UIColor.white.cgColor
        backgroundColor    = .systemRed
        
        // Shadow parameters
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
}

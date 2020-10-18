//
//  PersonalGreetingLabel.swift
//  TestApp
//
//  Created by Саша Капчук on 10/18/20.
//

import UIKit

class PersonalGreetingLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpGreetingLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpGreetingLabel() {
        textAlignment = .center
        textColor = .white
        backgroundColor = .systemOrange
        font = UIFont(name: "AvenirNext-DemiBold", size: 26)
        layer.cornerRadius = 8
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth  = 3.0
        layer.borderColor  = UIColor.white.cgColor
    }
    
}

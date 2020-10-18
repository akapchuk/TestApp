//
//  PersonalTextField.swift
//  TestApp
//
//  Created by Саша Капчук on 10/18/20.
//

import UIKit

class PersonalTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpTextField() {
        returnKeyType = .done
        autocapitalizationType = .words
        autocorrectionType = .yes
        clipsToBounds = true
        backgroundColor = .white
        layer.cornerRadius = 8
        layer.borderWidth  = 1.5
        layer.borderColor  = UIColor.lightGray.cgColor
    }
    
}

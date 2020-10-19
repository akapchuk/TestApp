//
//  PersonalDescriptionLabel.swift
//  TestApp
//
//  Created by Саша Капчук on 10/18/20.
//

import UIKit

class PersonalDescriptionLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpDescriptionLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpDescriptionLabel() {
        textColor = .white
        textAlignment = .left
    }
    
}

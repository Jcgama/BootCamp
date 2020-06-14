//
//  CustomTextField.swift
//  BootCamp
//
//  Created by Julio Gama on 14/06/20.
//  Copyright © 2020 Julio Gama. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    init(placeholder: String) {
        super.init(frame: .zero)
        
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        leftView = spacer
        leftViewMode = .always
        
        let whitePlaceholderText = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.white])
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        attributedPlaceholder = whitePlaceholderText
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(height: 50)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

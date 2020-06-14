//
//  LoginController.swift
//  BootCamp
//
//  Created by Julio Gama on 14/06/20.
//  Copyright © 2020 Julio Gama. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    private let imageView = UIImageView(image: #imageLiteral(resourceName: "firebase-logo"))
    private let emailTextField = CustomTextField(placeholder: "Email")
    private let passwordTextView: CustomTextField = {
        let tf = CustomTextField(placeholder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemIndigo.cgColor, UIColor.systemTeal.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(imageView)
        imageView.centerX(inView: view)
        imageView.setDimensions(height: 120, width: 120)
        imageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTextView])
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.anchor(top: imageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32, paddingRight: 32)
    }
}

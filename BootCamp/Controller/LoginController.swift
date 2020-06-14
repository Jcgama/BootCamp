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
    }
}

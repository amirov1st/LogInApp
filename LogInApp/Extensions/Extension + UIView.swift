//
//  Extension + UIView.swift
//  LogInApp
//
//  Created by Amirov Foma on 24.03.2024.
//

import UIKit

// MARK: - Background Color
      
extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 210/255,
            green: 109/255,
            blue: 128/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 107/255,
            green: 148/255,
            blue: 230/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}


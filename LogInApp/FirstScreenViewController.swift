//
//  ViewController.swift
//  LogInApp
//
//  Created by Amirov Foma on 18.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonTapped() {
        
    }
    
    @IBAction func forgotUsernameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User 🙃")
    }
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 123 🙃")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { [self] _ in
            passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


//
//  ViewController.swift
//  LogInApp
//
//  Created by Amirov Foma on 18.03.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "Steeve"
    private let password = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondScreenVC = segue.destination as? WelcomeViewController
        secondScreenVC?.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
   
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(withTitle: "Invalid username or password", andMessage: "Please, enter correct username and password")
            passwordTF.text = ""
            return false
        }
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let secondScreenVC = segue.source as? WelcomeViewController
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUsernameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is Steeve 🙃")
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

/* Questions:
 1.  В с SecondScreenViewControler в storyboard я не понимаю почему верхний constreint
 для StackView идет до SuperView, хотя я явно указываю что мне надо до SafeArea.
 Тоже самое с нижним constreint для кнопки.
 2.
 */


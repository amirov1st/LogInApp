//
//  ViewController.swift
//  LogInApp
//
//  Created by Amirov Foma on 18.03.2024.
//

import UIKit

final class FirstScreenViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondScreenVC = segue.destination as? SecondScreenViewController
        secondScreenVC?.userName = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let secondScreenVC = segue.source as? SecondScreenViewController
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButtonTapped() {
    
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
 2. Логику кода для нажатия кнопки не смог придумать. Единствое на что хватило ума. Пойду смотреть разбор(
 
 if userNameTF.text == "Steeve" && passwordTF.text == "123" {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let secondScreenVC = segue.destination as? SecondScreenViewController
                secondScreenVC?.userName = userNameTF.text
            }
        } else {
            func forgotPasswordButtonTapped() {
                showAlert(withTitle: "Oops!", andMessage: "Your password is 123 🙃")
            }
        } 
 */


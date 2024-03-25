//
//  SecondScreenViewController.swift
//  LogInApp
//
//  Created by Amirov Foma on 19.03.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var emodjiLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        greetingLabel.text = """
                Welcome, \(user.person.fullName)!
                What a day, huh?
                """
        emodjiLabel.text = "👩🏼‍💻"
    }
}


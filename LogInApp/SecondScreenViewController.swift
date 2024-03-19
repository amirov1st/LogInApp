//
//  SecondScreenViewController.swift
//  LogInApp
//
//  Created by Amirov Foma on 19.03.2024.
//

import UIKit

final class SecondScreenViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var emodjiLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(userName ?? "")"
        emodjiLabel.text = "👋"
    }
}

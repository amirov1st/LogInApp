//
//  UserInfoViewContoller.swift
//  LogInApp
//
//  Created by Amirov Foma on 24.03.2024.
//

import UIKit

final class UserInfoViewContoller: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var currentJobLabel: UILabel!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        locationLabel.text = user.person.location
        currentJobLabel.text = user.person.currentJob.title
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let UserContactsVC = segue.destination as? UserContactsViewContoller else  {
            return
        }
        UserContactsVC.user = user
    }
}

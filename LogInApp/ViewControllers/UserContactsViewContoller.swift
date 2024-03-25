//
//  UserIContactsViewContoller.swift
//  LogInApp
//
//  Created by Amirov Foma on 24.03.2024.
//

import UIKit

final class UserContactsViewContoller: UIViewController {

    
    @IBOutlet var userDescription: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        userDescription.text = user.person.hobby
        

        
    }
    

}

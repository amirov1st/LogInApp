//
//  TabBarViewContoller.swift
//  LogInApp
//
//  Created by Amirov Foma on 24.03.2024.
//

import UIKit

final class TabBarViewContoller: UITabBarController {
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearence = UITabBarAppearance()
        tabBarAppearence.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearence
        tabBar.scrollEdgeAppearance = tabBarAppearence
        
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeWC = viewController as? WelcomeViewController {
                welcomeWC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? UserInfoViewContoller else { return }
                userInfoVC.user = user
            }
        }
    }
}

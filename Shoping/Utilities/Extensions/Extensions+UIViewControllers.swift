//
//  Extensions+UIViewControllers.swift
//  Shoping
//
//  Created by mjeed on 02/01/2024.
//

import UIKit
import SideMenu

extension UIViewController {
    
    func showMenu() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SideMenuVC")
        let sideMenu = SideMenuNavigationController(rootViewController: vc)
        sideMenu.alwaysAnimate = true
        sideMenu.presentationStyle = .menuSlideIn
        sideMenu.menuWidth = CGFloat(UIScreen.main.bounds.width - 50)
        sideMenu.completeGestureDuration = 2.0
        sideMenu.dismissDuration = 0.5
        present(sideMenu, animated: true)

    }
}

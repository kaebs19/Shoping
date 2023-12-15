//
//  ContainerTableView.swift
//  Shoping
//
//  Created by mjeed on 10/12/2023.
//

import UIKit

class ContainerTableView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        selectedIndex = 0


    }
    
    override func viewDidAppear(_ animated: Bool) {

    }

   
    
    private func changeUnSelectedColor(color: UIColor) {
        self.tabBar.unselectedItemTintColor = color
    }
    




}

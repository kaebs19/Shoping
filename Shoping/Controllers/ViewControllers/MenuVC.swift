//
//  menuVC.swift
//  Shoping
//
//  Created by mjeed on 31/12/2023.
//

import UIKit

class MenuVC: UIViewController {
    
    
    // MARK: - Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var editProfileImage: UIButton!
    
    
    // MARK: - Variables
    
    var menuList = [
        Menu(title: "Orders", photo: UIImage(named: "clipboard")!),
        Menu(title: "Wish List", photo: UIImage(named: "list")!),
        Menu(title: "Last Viewed", photo: UIImage(named: "eye")!),
        Menu(title: "Shipping Adress", photo: UIImage(named: "map-pin")!),
        Menu(title: "Language", photo: UIImage(named: "globe")!),
        Menu(title: "Settings", photo: UIImage(named: "settings")!),
        Menu(title: "Help", photo: UIImage(named: "help-circle")!)
    ]
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        
    }
    
    // MARK: -  Configure Action - Func
    
   
}

// MARK: - extensions

extension MenuVC {
        
    private func setupUI() {
        initCV(cv: menuTV)
    }
    
    private func initCV(cv: UITableView) {
        cv.dataSource = self
        cv.delegate = self
        cv.register(UINib(nibName: "MenuTVCell", bundle: nil), forCellReuseIdentifier: "MenuTVCell")
    }
}


// MARK: -  TableView Delegate & DataSource

extension MenuVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}


extension MenuVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTVCell", for: indexPath) as! MenuTVCell
        let data = menuList[indexPath.row]
        cell.getup(date: data)
        return cell
        
    }
    
    
}

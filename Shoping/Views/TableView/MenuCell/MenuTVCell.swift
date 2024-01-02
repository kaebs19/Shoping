//
//  MenuTVCell.swift
//  Shoping
//
//  Created by mjeed on 31/12/2023.
//

import UIKit

class MenuTVCell: UITableViewCell {

    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuTitleLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func getup(date: Menu) {
        
        menuImage.image = date.photo
        menuTitleLable.text = date.title
    }

    
}

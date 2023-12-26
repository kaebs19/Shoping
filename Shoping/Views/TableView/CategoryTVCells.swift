//
//  CategoryTVCells.swift
//  Shoping
//
//  Created by mjeed on 25/12/2023.
//

import UIKit

class CategoryTVCells: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        mainView.clipsToBounds = true
        mainView.addCornerRadius(radius: 6)
    }

 
    
}

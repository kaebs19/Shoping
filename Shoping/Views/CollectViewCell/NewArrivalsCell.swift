//
//  NewArrivalsCell.swift
//  Shoping
//
//  Created by mjeed on 13/12/2023.
//

import UIKit

class NewArrivalsCell: UICollectionViewCell {
    
    // MARK: - Outlets

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var productTitleLable: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        productImageView.addCornerRadius(radius: 8)
        
        
    }

}

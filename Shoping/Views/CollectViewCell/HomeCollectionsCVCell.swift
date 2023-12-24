//
//  HomeCollectionsCVCell.swift
//  Shoping
//
//  Created by mjeed on 23/12/2023.
//

import UIKit

class HomeCollectionsCVCell: UICollectionViewCell {

    // MARK: - Outlets
    @IBOutlet weak var categoryImageView: UIImageView!
    
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        categoryImageView.addCornerRadius(radius: 6)
        
    }

}

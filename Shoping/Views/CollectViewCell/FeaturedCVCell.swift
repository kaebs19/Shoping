//
//  FeaturedCVCell.swift
//  Shoping
//
//  Created by mjeed on 23/12/2023.
//

import UIKit

class FeaturedCVCell: UICollectionViewCell {

    // MARK: - Outlets
    @IBOutlet weak var saleView: UIView!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var saleLable: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        saleView.isHidden = true
        saleLable.isHidden = true
        saleView.addCornerRadius(radius: 11)
    }
    
    func setup(_ cellData: Featureds){
        titleLable.text = cellData.name
        priceLable.text = cellData.price
        productImage.image = cellData.image
        saleLable.isHidden = !cellData.isSale
    }

}


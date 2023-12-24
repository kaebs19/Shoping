//
//  HomeProductCVCell.swift
//  Shoping
//
//  Created by mjeed on 23/12/2023.
//

import UIKit

class HomeProductCVCell: UICollectionViewCell {

    @IBOutlet weak var saleImageView: UIImageView!
    @IBOutlet weak var nameProductLable: UILabel!
    @IBOutlet weak var saleButton: UIButton!
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var saleLable: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization codeis
        saleLable.isHidden = true
        saleButton.isHidden = true
        saleImageView.isHidden = true
    }

    func setup(_ cellData: Products) {
        priceLable.text = cellData.priceProduct
        productImageView.image = cellData.iamgeProduct
        nameProductLable.text = cellData.titleProduct
        saleButton.isHidden = !cellData.isSale
        
    }
    
}

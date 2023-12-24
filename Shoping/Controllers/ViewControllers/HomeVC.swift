//
//  HomeVC.swift
//  Shoping
//
//  Created by mjeed on 21/12/2023.
//

import UIKit

class HomeVC: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var backroundView: UIView!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var CategriesCV: UICollectionView!
    @IBOutlet weak var productCV: UICollectionView!
    
    // MARK: - Variables

    var productList = [
        Products(titleProduct: "Red Overalls", priceProduct: "$59", iamgeProduct: UIImage(named: "product")!, isSale: true),
        Products(titleProduct: "Pink Fur Coat", priceProduct: "$40", iamgeProduct: UIImage(named: "Product1")!, isSale: false),
        Products(titleProduct: "Pink Fur Coat", priceProduct: "$52", iamgeProduct: UIImage(named: "product")!, isSale: false),
        Products(titleProduct: "Pink Fur Coat", priceProduct: "$87", iamgeProduct: UIImage(named: "product")!, isSale: false),
        Products(titleProduct: "Pink Fur Coat", priceProduct: "$98", iamgeProduct: UIImage(named: "product")!, isSale: false)

    
    ]
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()

    }
    
    // MARK: -  Configure Action - Func
    
    func initUI(){
        for item in [backroundView , moreButton] {
            item?.addBorder(color: Colors.C6DCEE7, with: 1)
            item?.addCornerRadius(radius: 6)
            //HomeCollectionsCVCell
            initCV(CategriesCV, "HomeCollectionsCVCell")
            
            //HomeCollectionsCVCell
            initCV(productCV, "HomeProductCVCell")
        }
    }

    
}

// MARK: -  CollectionView Delegate & DataSource

extension HomeVC {
    /// confgurCollectionView
    func initCV(_ cv: UICollectionView ,_ cellName: String) {
        cv.delegate = self
        cv.dataSource = self
        cv.register(UINib(nibName: cellName, bundle: nil), forCellWithReuseIdentifier: cellName)
    }
    
}

extension HomeVC: UICollectionViewDelegate {
    
}

extension HomeVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0 : return 10
        default: return productList.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionsCVCell", for: indexPath) as! HomeCollectionsCVCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeProductCVCell", for: indexPath) as! HomeProductCVCell
            let data = productList[indexPath.item]
            cell.setup(data)
            if data.isSale {
                cell.saleButton.isHidden = false
                cell.saleLable.isHidden = false
                cell.saleImageView.isHidden = false
            } else {
                cell.saleButton.isHidden = true
                cell.saleLable.isHidden = true
                cell.saleImageView.isHidden = true
            }
            return cell
        }
    }
    
    
}

extension HomeVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView.tag{
        case 0:
            let collectionViewHeight = collectionView.bounds.height
            return CGSize(width: collectionViewHeight*1.5620437956, height: collectionViewHeight)
        default:
            let collectionViewHeight = collectionView.bounds.height
            return CGSize(width: collectionViewHeight*0.625, height: collectionViewHeight)
        }
    }
}

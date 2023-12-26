//
//  FeaturedVC.swift
//  Shoping
//
//  Created by mjeed on 23/12/2023.
//

import UIKit

class FeaturedVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var FeaturedCV: UICollectionView!
    
    
    // MARK: - Variables
    var featuredlist = [
        Featureds(name: "Red Overalls", price: "$39", image: UIImage(named: "product")!, isSale: true),
        Featureds(name: "Red Overalls", price: "$39", image: UIImage(named: "Product1")!, isSale: false),
        Featureds(name: "Red Overalls", price: "$39", image: UIImage(named: "Product2")!, isSale: false),
        Featureds(name: "Red Overalls", price: "$39", image: UIImage(named: "Product3")!, isSale: true),
        Featureds(name: "Red Overalls", price: "$39", image: UIImage(named: "Product3")!, isSale: false),
        Featureds(name: "Red Overalls", price: "$39", image: UIImage(named: "Product3")!, isSale: false),
    ]
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
    }
    // MARK: -  Configure Action - Func
    
    private func initUI(){
        initCVI(FeaturedCV, cellName: "FeaturedCVCell")
    }
    
    
}

// MARK: -  CollectionView Delegate & DataSource
//FeaturedCVCell

extension FeaturedVC{
    func initCVI(_ cv: UICollectionView , cellName: String){
        cv.dataSource = self
        cv.delegate = self
        cv.register(UINib(nibName: cellName, bundle: nibBundle), forCellWithReuseIdentifier: cellName)
    }
}

extension FeaturedVC: UICollectionViewDelegate {
    
}

extension FeaturedVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return featuredlist.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCVCell", for: indexPath) as! FeaturedCVCell
        let data = featuredlist[indexPath.item]
        cell.setup(data)
        if data.isSale {
            cell.saleView.isHidden = false
            cell.saleLable.isHidden = false
        } else {
            cell.saleView.isHidden = true
            cell.saleLable.isHidden = true
        }
        
        return cell
    }
    
    
}

extension FeaturedVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfRowCells: CGFloat = 2
        let collectionWidth = collectionView.bounds.width
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let spacingBetweenCells = flowLayout.minimumLineSpacing * (numberOfRowCells - 1)
        let adjustWidth = collectionWidth - spacingBetweenCells
        let width = floor(adjustWidth/numberOfRowCells)
        let height = width * 1.5620437956
        return CGSize(width: width, height: height)
        
//        let width = collectionView.bounds.width
//        let heght = width * 0.76953125
//        return CGSize(width: width, height: heght)
        
    }
}

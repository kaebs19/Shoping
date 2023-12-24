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
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCVCell", for: indexPath) as! FeaturedCVCell
        
        return cell
    }
    
    
}

extension FeaturedVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewHeight = collectionView.bounds.height
        return CGSize(width: collectionViewHeight*0.625, height: collectionViewHeight)
    }
}

//
//  HomeVC.swift
//  Shoping
//
//  Created by mjeed on 10/12/2023.
//

import UIKit

class CategoiresVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var productCV: UICollectionView!
    
    // MARK: - Variables

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupCollectionView(CV: productCV)
        
    }
    
    // MARK: -  Configure Action - Func

    private func setupView() {
        searchView.addBorderAndWith(UIColor(named: "#6DCEE7")!, with: 1)
        searchView.addCornerRadius(radius: 6)

    }
    
    private func setupCollectionView(CV:UICollectionView ) {
        CV.dataSource = self
        CV.delegate = self
        CV.register(UINib(nibName: "ArrivalsCVCell", bundle: nil), forCellWithReuseIdentifier: "ArrivalsCVCell")
    }
    

    
}

// MARK: -  CollectiovView Delegate & DataSource

extension CategoiresVC: UICollectionViewDelegate {
    
}

extension CategoiresVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArrivalsCVCell", for: indexPath) as! ArrivalsCVCell
        
        return cell
    }
    
    
}

extension CategoiresVC: UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // numberOfCellsInRow
        let numberOfCellsInRow: CGFloat = 2
        // collectionViewWidth
        let collectionViewWidth = collectionView.bounds.width
        // spacingBetweenCells
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let spacingBetweenCells = flowLayout.minimumInteritemSpacing * (numberOfCellsInRow - 1)
        // adjustWidth = collectionViewWidth - spacingBetweenCells
        let adjustWidth = collectionViewWidth - spacingBetweenCells
        // width = adjustWidth/ numberOfCellsInRow
        let width = floor(adjustWidth / numberOfCellsInRow)
        
        // height
        let height = width * 1.5555555556
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 38
    }
    
    
    
}

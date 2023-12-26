//
//  CategoryVC.swift
//  Shoping
//
//  Created by mjeed on 25/12/2023.
//

import UIKit

class CategoryVC: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var categoryTV: UITableView!
    
    
    
    // MARK: - Variables

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        reloadData(tv: categoryTV)
    }
    
    // MARK: -  Configure Action - Func

   private func initUI(){
        initTV(tv: categoryTV)
        reloadData(tv: categoryTV)

    }

}

// MARK: -  TableView Delegate & DataSource

extension CategoryVC{
    func initTV(tv:UITableView){
        tv.delegate = self
        tv.dataSource = self
        tv.registerNib(cellClass: CategoryTVCells.self)
    }
    
    func reloadData(tv:UITableView) {
        tv.reloadData()
    }
}

extension CategoryVC: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 137
    }
}

extension CategoryVC: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTVCells") as! CategoryTVCells
        
        return cell
    }
    
    
}

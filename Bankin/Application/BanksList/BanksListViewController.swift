//
//  BanksListViewController.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit
import Alamofire

class BanksListViewController: UIViewController {
    weak var viewModel: BanksListViewModel?
    let dataBase = DataBaseManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
    }

    func getData() {
        let banks = dataBase.fetch(BanksListData.self)
    }
}


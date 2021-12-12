//
//  BanksListViewController.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit
import Alamofire

class BanksListViewController: UIViewController {
    var viewModel: BanksListViewModel?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let viewModel = viewModel else {
            return
        }
        view.setGradientBackground()
        viewModel.delegate = self
        setupTableView()
    }
    
    func setupTableView() {
        let nib = UINib(nibName: "BankCountryView", bundle: nil)
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: "BankCountryView")
        tableView.register(UINib.init(nibName: "BankTableViewCell", bundle: nil), forCellReuseIdentifier: "BankTableViewCell")
    }
}

extension BanksListViewController: BanksListViewModelDelegate {
    func updateUI() {
        tableView.reloadData()
    }
}

extension BanksListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.getBankCountryCount()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BankTableViewCell", for: indexPath) as? BankTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}

extension BanksListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let viewModel = viewModel else {
            return UIView()
        }
        let view = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: "BankCountryView")  as! BankCountryView
        let bankCountryViewModel = BankCountryViewModel(countryBank: viewModel.getBankCountryTitle(section))
        view.viewModel = bankCountryViewModel
        view.configureView()
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
}

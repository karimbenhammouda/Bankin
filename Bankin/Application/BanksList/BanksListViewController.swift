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
        tableView.register(UINib(nibName: "BankCountryView", bundle: nil), forHeaderFooterViewReuseIdentifier: "BankCountryView")
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
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.getParentBanksCount(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let viewModel = viewModel, let cell = tableView.dequeueReusableCell(withIdentifier: "BankTableViewCell", for: indexPath) as? BankTableViewCell else {
            return UITableViewCell()
        }
        cell.viewModel = BanksTableCellViewModel(viewModel.getBankIcon(indexPath.section, indexPath.row), viewModel.getBankTitle(indexPath.section, indexPath.row))
        cell.configureCell()
        return cell
    }
}

extension BanksListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let viewModel = viewModel, let view = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: "BankCountryView")  as? BankCountryView else {
            return UIView()
        }
        let bankCountryViewModel = BankCountryViewModel(countryBank: viewModel.getBankCountryTitle(section))
        view.viewModel = bankCountryViewModel
        view.configureView()
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}

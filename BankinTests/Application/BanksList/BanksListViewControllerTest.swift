//
//  BanksListViewControllerTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import XCTest
@testable import Bankin

class BanksListViewControllerTest: XCTestCase {

    var banksListViewController: BanksListViewController!
        
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "BanksList", bundle: nil)
        self.banksListViewController = storyboard.instantiateViewController(withIdentifier: "BanksListCoordinator") as? BanksListViewController
        self.banksListViewController.viewModel = BanksListViewModel(webServiceClient: WebServiceClient(keychen: KeychainManager()))
        let dataBaseManager = DataBaseManager()
        self.banksListViewController.viewModel?.banksList = dataBaseManager.fetch(BanksListData.self)
        self.banksListViewController.loadView()
        self.banksListViewController.viewDidLoad()
        self.banksListViewController.tableView.reloadData()
        }
        
        override func tearDown() {
            // Put teardown code here. This method is called after the invocation of each test method in the class.
            super.tearDown()
        }
        
        func testHasATableView() {
            XCTAssertNotNil(banksListViewController.tableView)
        }
        
        func testTableViewHasDelegate() {
            XCTAssertNotNil(banksListViewController.tableView.delegate)
        }
        
        func testTableViewConfromsToTableViewDelegateProtocol() {
            XCTAssertTrue(banksListViewController.conforms(to: UITableViewDelegate.self))
        }
        
        func testTableViewHasDataSource() {
            XCTAssertNotNil(banksListViewController.tableView.dataSource)
        }
        
        func testTableViewConformsToTableViewDataSourceProtocol() {
            XCTAssertTrue(banksListViewController.conforms(to: UITableViewDataSource.self))
            XCTAssertTrue(banksListViewController.responds(to: #selector(banksListViewController.numberOfSections(in:))))
            XCTAssertTrue(banksListViewController.responds(to: #selector(banksListViewController.tableView(_:numberOfRowsInSection:))))
            XCTAssertTrue(banksListViewController.responds(to: #selector(banksListViewController.tableView(_:cellForRowAt:))))
        }
    
    func testTableViewConformsToTableViewDelegateProtocol() {
        XCTAssertTrue(banksListViewController.conforms(to: UITableViewDelegate.self))
        XCTAssertTrue(banksListViewController.responds(to: #selector(banksListViewController.tableView(_:viewForHeaderInSection:))))
        XCTAssertTrue(banksListViewController.responds(to: #selector(banksListViewController.tableView(_:heightForHeaderInSection:))))
        XCTAssertTrue(banksListViewController.responds(to: #selector(banksListViewController.tableView(_:heightForRowAt:))))
    }

        func testTableViewCellHasReuseIdentifier() {
            let cell = banksListViewController.tableView(banksListViewController.tableView, cellForRowAt: IndexPath(row: 0, section: 1)) as? BankTableViewCell
            let bankTableViewCell = cell?.reuseIdentifier
            let bankTableViewCellIdentifier = "BankTableViewCell"
            XCTAssertEqual(bankTableViewCell, bankTableViewCellIdentifier)
        }
}

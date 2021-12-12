//
//  BanksListViewModelTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import XCTest
@testable import Bankin

class BanksListViewModelTest: XCTestCase {
    let viewModel = BanksListViewModel(webServiceClient: WebServiceClient(keychen: KeychainManager()))
    
    func testCountAllDataAfterSort() {
        let dataBaseManager = DataBaseManager()
        viewModel.banksList = dataBaseManager.fetch(BanksListData.self)
        viewModel.sortData()
        XCTAssertEqual(viewModel.banksList.count, dataBaseManager.fetch(BanksListData.self).count)
    }
    
    func testFirstDataAfterSort() {
        let dataBaseManager = DataBaseManager()
        viewModel.banksList = dataBaseManager.fetch(BanksListData.self)
        viewModel.sortData()
        let country = viewModel.getBankCountryTitle(0)
        XCTAssertEqual(country, "FR")
    }
}

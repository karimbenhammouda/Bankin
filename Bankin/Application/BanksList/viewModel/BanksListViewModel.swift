//
//  BanksListViewModel.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

protocol BanksListViewModelDelegate: AnyObject {
    func updateUI()
}

class BanksListViewModel {
    private let webServiceClient: WebServiceClient
    private let dataBaseManager = DataBaseManager()
    weak var delegate: BanksListViewModelDelegate?
    var banksList: [BanksListData] = []
    var banksListResources: [BanksListResourcesData] = []

    init(webServiceClient: WebServiceClient) {
        self.webServiceClient = webServiceClient
        banksList = dataBaseManager.fetch(BanksListData.self)
        getData()
        sortData()
    }
    
    func getData() {
        webServiceClient.getBanksList() { [self] (finished)  in
            if finished {
                banksList = dataBaseManager.fetch(BanksListData.self)
                delegate?.updateUI()
            }
        }
    }
    
    func sortData() {
        guard let banksList = banksList.first, let banksResources = banksList.resources, var banksListResourcesData = (banksResources.allObjects as? [BanksListResourcesData]) else {
            return
        }
        for i in 0..<banksListResourcesData.count {
            if banksListResourcesData[i].country_code == Constants.banksList.sortDataKey {
                let element = banksListResourcesData.remove(at: i)
                banksListResourcesData.insert(element, at: 0)
            }
        }
        banksListResources = banksListResourcesData
    }
    
    func getBankCountryCount() -> Int {
        return banksListResources.count
    }
    
    func getBankCountryTitle(_ index: Int) -> String? {
        return banksListResources[index].country_code
    }
    
    func getParentBanksCount(_ section: Int) -> Int {
        guard let banksListResourcesParents = banksListResources[section].parent_banks, let parentsBank = (banksListResourcesParents.allObjects as? [ParentBanksData]) else {
            return 0
        }
        return parentsBank.count
    }
    
    func getBankIcon(_ section: Int, _ index: Int) -> String? {
        guard let banksListResourcesParents = banksListResources[section].parent_banks, let parentsBank = (banksListResourcesParents.allObjects as? [ParentBanksData]) else {
            return nil
        }
        return parentsBank[index].logo_url
    }
    
    func getBankTitle(_ section: Int, _ index: Int) -> String? {
        guard let banksListResourcesParents = banksListResources[section].parent_banks, let parentsBank = (banksListResourcesParents.allObjects as? [ParentBanksData]) else {
            return nil
        }
        return parentsBank[index].name
    }
}

//
//  BanksList.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

struct BanksList: Decodable {
    let resources: [BanksListResources]
    let pagination: BanksListPagination
    
    static let dataBase = DataBaseManager()
    
    func saveDataBase() {
        let dataBaseManager = DataBaseManager()
        dataBaseManager.deleteAll(BanksListData.self)
        guard let banksList = dataBaseManager.add(BanksListData.self) else {
            return
        }
        let banksListResourcesData = getBanksListRessouce()
        for banksResources in banksListResourcesData {
            banksList.addToResources(banksResources)
        }
        banksList.pagination = getBanksListPagination()
        dataBaseManager.save()
    }
    
    func getBanksListPagination() -> BanksListPaginationData {
        let banksListPaginationData = BanksListPaginationData(context: BanksList.dataBase.viewContext)
        banksListPaginationData.previous_uri = pagination.previous_uri
        banksListPaginationData.next_uri = pagination.next_uri
        return banksListPaginationData
    }
    
    func getBanksListRessouce() -> [BanksListResourcesData] {
        var banksListRessouce: [BanksListResourcesData] = []
        for resource in resources {
            let banksListResourcesData = BanksListResourcesData(context: BanksList.dataBase.viewContext)
            banksListResourcesData.country_code = resource.country_code
            let parentBanks = getParentBanks(resource.parent_banks)
            for parentBank in parentBanks {
                banksListResourcesData.addToParent_banks(parentBank)
            }
            banksListRessouce.append(banksListResourcesData)
        }
        return banksListRessouce
    }
    
    func getParentBanks(_ parentBanks: [ParentBanks]) -> [ParentBanksData] {
        var parentBanksData: [ParentBanksData] = []
        for parent in parentBanks {
            let parentBanks = ParentBanksData(context: BanksList.dataBase.viewContext)
            parentBanks.name = parent.name
            parentBanks.logo_url = parent.logo_url
            let banks = getBanks(parent.banks)
            for bank in banks {
                parentBanks.addToBanks(bank)
            }
            parentBanks.is_highlighted = parent.is_highlighted
            parentBanks.display_order = Int64(parent.display_order)
            parentBanksData.append(parentBanks)
        }
        return parentBanksData
    }
    
    func getBanks(_ banks: [Banks]) -> [BanksData] {
        var banksData: [BanksData] = []
        for bank in banks {
            let banks = BanksData(context: BanksList.dataBase.viewContext)
            banks.id = Int64(bank.id)
            banks.resource_uri = bank.resource_uri
            banks.resource_type = bank.resource_type
            banks.name = bank.name
            banks.country_code = bank.country_code
            banks.automatic_refresh = bank.automatic_refresh
            banks.primary_color = bank.primary_color
            banks.secondary_color = bank.secondary_color
            banks.logo_url = bank.logo_url
            banks.deeplink_ios = bank.deeplink_ios
            banks.deeplink_android = bank.deeplink_android
            banks.transfer_enabled = bank.transfer_enabled
            let banksForm = getBanksForm(bank.form)
            for bankForm in banksForm {
                banks.addToForm(bankForm)
            }
            banks.authentication_type = bank.authentication_type
            banks.parent_name = bank.parent_name
            banks.capabilities = bank.capabilities
            banks.payment_enabled = bank.payment_enabled
            banksData.append(banks)
        }
        return banksData
    }
    
    func getBanksForm(_ banksForm: [BanksForm]) -> [BanksFormData] {
        var banksFormData: [BanksFormData] = []
        for bankForm in banksForm {
            let banksForm = BanksFormData(context: BanksList.dataBase.viewContext)
            banksForm.label = bankForm.label
            banksForm.type = bankForm.type
            banksForm.isNum = bankForm.isNum
            if let maxLength = bankForm.maxLength {
                banksForm.maxLength = Int64(maxLength)
            }
            banksFormData.append(banksForm)
        }
        return banksFormData
    }
}

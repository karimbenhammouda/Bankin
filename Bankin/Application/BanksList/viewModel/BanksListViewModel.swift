//
//  BanksListViewModel.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import Foundation

class BanksListViewModel {
    private let webServiceClient: WebServiceClient
    var banksList: BanksList?

    init(webServiceClient: WebServiceClient) {
        self.webServiceClient = webServiceClient
        getData()
    }
    
    func getData() {
        webServiceClient.getBanksList() { (banksList)  in
            DispatchQueue.main.async {
                print(banksList)
            }
        }
    }
}

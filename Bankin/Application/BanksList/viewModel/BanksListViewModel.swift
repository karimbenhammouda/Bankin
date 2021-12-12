//
//  BanksListViewModel.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
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
        webServiceClient.getBanksList() { (finished)  in
            if finished {
                // TODO: reload data
            }
        }
    }
}

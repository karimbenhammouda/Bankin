//
//  BanksListViewModel.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import Foundation

class BanksListViewModel {
    let webServiceClient: WebServiceClient

    init(webServiceClient: WebServiceClient) {
        self.webServiceClient = webServiceClient
    }
}

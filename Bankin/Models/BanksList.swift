//
//  BanksList.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import Foundation

struct BanksList: Decodable {
    let resources: [BanksListResources]
    let pagination: BanksListPagination
}

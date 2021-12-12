//
//  BanksTableCellViewModel.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

class BanksTableCellViewModel {
    let iconBank: String?
    let titleBank: String?
    
    init(_ iconBank: String?, _ titleBank: String?) {
        self.iconBank = iconBank
        self.titleBank = titleBank
    }
}

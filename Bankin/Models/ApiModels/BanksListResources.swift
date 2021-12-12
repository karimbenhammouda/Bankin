//
//  BanksListResources.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

struct BanksListResources: Decodable {
    let country_code: String?
    let parent_banks: [ParentBanks]
}

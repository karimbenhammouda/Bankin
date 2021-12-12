//
//  BanksListPagination.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

struct BanksListPagination: Decodable {
    let previous_uri: String?
    let next_uri: String?
}

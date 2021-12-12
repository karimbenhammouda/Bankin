//
//  ParentBanks.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

struct ParentBanks: Decodable {
    let name: String?
    let logo_url: String?
    let banks: [Banks]
    let is_highlighted: Bool
    let display_order: Int
}

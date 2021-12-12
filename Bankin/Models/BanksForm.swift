//
//  BanksForm.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import Foundation

struct BanksForm: Decodable {
    let label: String?
    let type: String?
    let isNum: String?
    let maxLength: Int?
}

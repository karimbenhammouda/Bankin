//
//  StringProtocol+Utils.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

extension StringProtocol {
    var firstUppercased: String { prefix(1).uppercased() + dropFirst() }
}

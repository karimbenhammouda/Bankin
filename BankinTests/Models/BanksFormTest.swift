//
//  BanksFormTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import XCTest
@testable import Bankin

class BanksFormTests: XCTestCase {
    func testBanksForm() {
        let bankForm = BanksForm(label: "Email", type: "USER", isNum: "0", maxLength: nil)
        XCTAssertEqual("Email", bankForm.label)
        XCTAssertEqual("USER", bankForm.type)
        XCTAssertEqual("0", bankForm.isNum)
        XCTAssertEqual(nil, bankForm.maxLength)
    }
}

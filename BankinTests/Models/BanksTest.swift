//
//  BanksTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import XCTest
@testable import Bankin

class BanksTests: XCTestCase {
    func testBanks() {
        let banks = Banks(id: 457, resource_uri: "/v2/banks/457", resource_type: "bank", name: "N26 (Number 26) DE", country_code: "DE", automatic_refresh: true, primary_color: nil, secondary_color: nil, logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", deeplink_ios: nil, deeplink_android: nil, transfer_enabled: false, form: [BanksForm(label: "Email", type: "USER", isNum: "0", maxLength: nil)], authentication_type: "INTERNAL_CREDS", parent_name: nil, capabilities: ["ais"], payment_enabled: false)
        XCTAssertEqual(457, banks.id)
        XCTAssertEqual("/v2/banks/457", banks.resource_uri)
        XCTAssertEqual("bank", banks.resource_type)
        XCTAssertEqual("N26 (Number 26) DE", banks.name)
        XCTAssertEqual("DE", banks.country_code)
        XCTAssertEqual(true, banks.automatic_refresh)
        XCTAssertEqual(nil, banks.primary_color)
        XCTAssertEqual(nil, banks.secondary_color)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banks.logo_url)
        XCTAssertEqual(nil, banks.deeplink_ios)
        XCTAssertEqual(nil, banks.deeplink_android)
        XCTAssertEqual("Email", banks.form[0].label)
        XCTAssertEqual("USER", banks.form[0].type)
        XCTAssertEqual("0", banks.form[0].isNum)
        XCTAssertEqual(nil, banks.form[0].maxLength)
        XCTAssertEqual("INTERNAL_CREDS", banks.authentication_type)
        XCTAssertEqual(nil, banks.parent_name)
        XCTAssertEqual("ais", banks.capabilities?[0])
        XCTAssertEqual(false, banks.payment_enabled)
    }
}


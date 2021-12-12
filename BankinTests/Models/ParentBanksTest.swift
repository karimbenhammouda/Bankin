//
//  ParentBanksTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import XCTest
@testable import Bankin

class ParentBanksTests: XCTestCase {
    func testParentBanks() {
        let banks = Banks(id: 457, resource_uri: "/v2/banks/457", resource_type: "bank", name: "N26 (Number 26) DE", country_code: "DE", automatic_refresh: true, primary_color: nil, secondary_color: nil, logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", deeplink_ios: nil, deeplink_android: nil, transfer_enabled: false, form: [BanksForm(label: "Email", type: "USER", isNum: "0", maxLength: nil)], authentication_type: "INTERNAL_CREDS", parent_name: nil, capabilities: ["ais"], payment_enabled: false)
        let parentBanks = ParentBanks(name: "N26 (Number 26) DE", logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banks: [banks], is_highlighted: false, display_order: 0)
        XCTAssertEqual("N26 (Number 26) DE", parentBanks.name)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", parentBanks.logo_url)
        XCTAssertEqual(457, parentBanks.banks[0].id)
        XCTAssertEqual("/v2/banks/457", parentBanks.banks[0].resource_uri)
        XCTAssertEqual("bank", parentBanks.banks[0].resource_type)
        XCTAssertEqual("N26 (Number 26) DE", parentBanks.banks[0].name)
        XCTAssertEqual("DE", parentBanks.banks[0].country_code)
        XCTAssertEqual(true, parentBanks.banks[0].automatic_refresh)
        XCTAssertEqual(nil, parentBanks.banks[0].primary_color)
        XCTAssertEqual(nil, parentBanks.banks[0].secondary_color)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", parentBanks.banks[0].logo_url)
        XCTAssertEqual(nil, parentBanks.banks[0].deeplink_ios)
        XCTAssertEqual(nil, parentBanks.banks[0].deeplink_android)
        XCTAssertEqual(false, parentBanks.banks[0].transfer_enabled)
        XCTAssertEqual("Email", parentBanks.banks[0].form[0].label)
        XCTAssertEqual("USER", parentBanks.banks[0].form[0].type)
        XCTAssertEqual("0", parentBanks.banks[0].form[0].isNum)
        XCTAssertEqual(nil, parentBanks.banks[0].form[0].maxLength)
        XCTAssertEqual("INTERNAL_CREDS", parentBanks.banks[0].authentication_type)
        XCTAssertEqual(nil, parentBanks.banks[0].parent_name)
        XCTAssertEqual("ais", parentBanks.banks[0].capabilities?[0])
        XCTAssertEqual(false, parentBanks.banks[0].payment_enabled)
        XCTAssertEqual(false, parentBanks.is_highlighted)
        XCTAssertEqual(0, parentBanks.display_order)
        
    }
}

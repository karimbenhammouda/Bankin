//
//  BanksListResourcesTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//


import XCTest
@testable import Bankin

class BanksListResourcesTests: XCTestCase {
    func testBanksListResources() {
        let banks = Banks(id: 457, resource_uri: "/v2/banks/457", resource_type: "bank", name: "N26 (Number 26) DE", country_code: "DE", automatic_refresh: true, primary_color: nil, secondary_color: nil, logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", deeplink_ios: nil, deeplink_android: nil, transfer_enabled: false, form: [BanksForm(label: "Email", type: "USER", isNum: "0", maxLength: nil)], authentication_type: "INTERNAL_CREDS", parent_name: nil, capabilities: ["ais"], payment_enabled: false)
        let parentBanks = ParentBanks(name: "N26 (Number 26) DE", logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banks: [banks], is_highlighted: false, display_order: 0)
        let banksListResources = BanksListResources(country_code: "DE", parent_banks: [parentBanks])
        XCTAssertEqual("DE", banksListResources.country_code)
        XCTAssertEqual("N26 (Number 26) DE", banksListResources.parent_banks[0].name)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banksListResources.parent_banks[0].logo_url)
        XCTAssertEqual(457, banksListResources.parent_banks[0].banks[0].id)
        XCTAssertEqual("/v2/banks/457", banksListResources.parent_banks[0].banks[0].resource_uri)
        XCTAssertEqual("bank", banksListResources.parent_banks[0].banks[0].resource_type)
        XCTAssertEqual("N26 (Number 26) DE", banksListResources.parent_banks[0].banks[0].name)
        XCTAssertEqual("DE", banksListResources.parent_banks[0].banks[0].country_code)
        XCTAssertEqual(true, banksListResources.parent_banks[0].banks[0].automatic_refresh)
        XCTAssertEqual(nil, banksListResources.parent_banks[0].banks[0].primary_color)
        XCTAssertEqual(nil, banksListResources.parent_banks[0].banks[0].secondary_color)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banksListResources.parent_banks[0].banks[0].logo_url)
        XCTAssertEqual(nil, banksListResources.parent_banks[0].banks[0].deeplink_ios)
        XCTAssertEqual(nil, banksListResources.parent_banks[0].banks[0].deeplink_android)
        XCTAssertEqual(false, banksListResources.parent_banks[0].banks[0].transfer_enabled)
        XCTAssertEqual("Email", banksListResources.parent_banks[0].banks[0].form[0].label)
        XCTAssertEqual("USER", banksListResources.parent_banks[0].banks[0].form[0].type)
        XCTAssertEqual("0", banksListResources.parent_banks[0].banks[0].form[0].isNum)
        XCTAssertEqual(nil, banksListResources.parent_banks[0].banks[0].form[0].maxLength)
        XCTAssertEqual("INTERNAL_CREDS", banksListResources.parent_banks[0].banks[0].authentication_type)
        XCTAssertEqual(nil, banksListResources.parent_banks[0].banks[0].parent_name)
        XCTAssertEqual("ais", banksListResources.parent_banks[0].banks[0].capabilities?[0])
        XCTAssertEqual(false, banksListResources.parent_banks[0].banks[0].payment_enabled)
        XCTAssertEqual(false, banksListResources.parent_banks[0].is_highlighted)
        XCTAssertEqual(0, banksListResources.parent_banks[0].display_order)
        
    }
}

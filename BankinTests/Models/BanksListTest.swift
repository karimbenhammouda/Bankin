//
//  BanksListTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import XCTest
@testable import Bankin

class BanksListTests: XCTestCase {
    func testBanksList() {
        let banksListPagination = BanksListPagination(previous_uri: nil, next_uri: "/v2/banks?after=MzY3&limit=100")
        let banks = Banks(id: 457, resource_uri: "/v2/banks/457", resource_type: "bank", name: "N26 (Number 26) DE", country_code: "DE", automatic_refresh: true, primary_color: nil, secondary_color: nil, logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", deeplink_ios: nil, deeplink_android: nil, transfer_enabled: false, form: [BanksForm(label: "Email", type: "USER", isNum: "0", maxLength: nil)], authentication_type: "INTERNAL_CREDS", parent_name: nil, capabilities: ["ais"], payment_enabled: false)
        let parentBanks = ParentBanks(name: "N26 (Number 26) DE", logo_url: "https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banks: [banks], is_highlighted: false, display_order: 0)
        let banksListResources = BanksListResources(country_code: "DE", parent_banks: [parentBanks])
        let banksList = BanksList(resources: [banksListResources], pagination: banksListPagination)
        XCTAssertEqual("DE", banksList.resources[0].country_code)
        XCTAssertEqual("N26 (Number 26) DE", banksList.resources[0].parent_banks[0].name)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banksList.resources[0].parent_banks[0].logo_url)
        XCTAssertEqual(457, banksList.resources[0].parent_banks[0].banks[0].id)
        XCTAssertEqual("/v2/banks/457", banksList.resources[0].parent_banks[0].banks[0].resource_uri)
        XCTAssertEqual("bank", banksList.resources[0].parent_banks[0].banks[0].resource_type)
        XCTAssertEqual("N26 (Number 26) DE", banksList.resources[0].parent_banks[0].banks[0].name)
        XCTAssertEqual("DE", banksList.resources[0].parent_banks[0].banks[0].country_code)
        XCTAssertEqual(true, banksList.resources[0].parent_banks[0].banks[0].automatic_refresh)
        XCTAssertEqual(nil, banksList.resources[0].parent_banks[0].banks[0].primary_color)
        XCTAssertEqual(nil, banksList.resources[0].parent_banks[0].banks[0].secondary_color)
        XCTAssertEqual("https://web.bankin.com/img/banks-logo/neo/04N26@2x.png", banksList.resources[0].parent_banks[0].banks[0].logo_url)
        XCTAssertEqual(nil, banksList.resources[0].parent_banks[0].banks[0].deeplink_ios)
        XCTAssertEqual(nil, banksList.resources[0].parent_banks[0].banks[0].deeplink_android)
        XCTAssertEqual(false, banksList.resources[0].parent_banks[0].banks[0].transfer_enabled)
        XCTAssertEqual("Email", banksList.resources[0].parent_banks[0].banks[0].form[0].label)
        XCTAssertEqual("USER", banksList.resources[0].parent_banks[0].banks[0].form[0].type)
        XCTAssertEqual("0", banksList.resources[0].parent_banks[0].banks[0].form[0].isNum)
        XCTAssertEqual(nil, banksList.resources[0].parent_banks[0].banks[0].form[0].maxLength)
        XCTAssertEqual("INTERNAL_CREDS", banksList.resources[0].parent_banks[0].banks[0].authentication_type)
        XCTAssertEqual(nil, banksList.resources[0].parent_banks[0].banks[0].parent_name)
        XCTAssertEqual("ais", banksList.resources[0].parent_banks[0].banks[0].capabilities?[0])
        XCTAssertEqual(false, banksList.resources[0].parent_banks[0].banks[0].payment_enabled)
        XCTAssertEqual(false, banksList.resources[0].parent_banks[0].is_highlighted)
        XCTAssertEqual(0, banksList.resources[0].parent_banks[0].display_order)
        XCTAssertEqual(nil, banksList.pagination.previous_uri)
        XCTAssertEqual("/v2/banks?after=MzY3&limit=100", banksList.pagination.next_uri)
    }
}

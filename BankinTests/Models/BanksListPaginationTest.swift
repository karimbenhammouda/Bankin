//
//  BanksListPaginationTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//


import XCTest
@testable import Bankin

class BanksListPaginationTests: XCTestCase {
    func testBanksListPagination() {
        let banksListPagination = BanksListPagination(previous_uri: nil, next_uri: "/v2/banks?after=MzY3&limit=100")
        XCTAssertEqual(nil, banksListPagination.previous_uri)
        XCTAssertEqual("/v2/banks?after=MzY3&limit=100", banksListPagination.next_uri)
    }
}

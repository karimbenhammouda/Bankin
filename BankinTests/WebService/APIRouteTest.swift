//
//  APIRouteTest.swift
//  BankinTests
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import XCTest
@testable import Bankin

class APIRouteTest: XCTestCase {

    func testBaseURLApiRoute() {
        let getBanksListRoute = APIRoute.getBanksList.baseURL
        XCTAssertEqual(getBanksListRoute, "https://sync.bankin.com/v2/")
    }
    
    func testBanksListApiRoute() {
        let getBanksListRoute = APIRoute.getBanksList.urlString
        XCTAssertEqual(getBanksListRoute, "https://sync.bankin.com/v2/banks?")
    }
    
    

}

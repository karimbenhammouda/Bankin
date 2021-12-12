//
//  Banks.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

struct Banks: Decodable {
    let id: Int
    let resource_uri: String?
    let resource_type: String?
    let name: String?
    let country_code: String?
    let automatic_refresh: Bool
    let primary_color: String?
    let secondary_color: String?
    let logo_url: String?
    let deeplink_ios: String?
    let deeplink_android: String?
    let transfer_enabled: Bool
    let form: [BanksForm]
    let authentication_type: String?
    let parent_name: String?
    let capabilities: [String]?
    let payment_enabled: Bool
}

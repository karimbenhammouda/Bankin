//
//  KeychainManager.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import SAMKeychain

enum KeychainUser {
    static let clientAccount = "karim.benhammouda"
    static let clientSecretKey = "client_secret"
    static let clientSecretValue = "56uolm946ktmLTqNMIvfMth4kdiHpiQ5Yo8lT4AFR0aLRZxkxQWaGhLDHXeda6DZ"
}

class KeychainManager {
    func setUserAccountKey() {
        SAMKeychain.setPassword(KeychainUser.clientSecretValue, forService: KeychainUser.clientSecretKey, account: KeychainUser.clientAccount)
    }
    
    func getUserAccountKey() -> String? {
        return SAMKeychain.password(forService: KeychainUser.clientSecretKey, account: KeychainUser.clientAccount)
    }
}

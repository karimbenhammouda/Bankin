//
//  APIRoute.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation

protocol APIRouteBuilder {
    var urlString: String { get }
    var baseURL: String { get }
    var path: String { get }
}

enum APIRoute {
    case getBanksList
}

extension APIRoute: APIRouteBuilder {
    var baseURL: String {
        switch self {
        default:
            return "https://sync.bankin.com/v2/"
        }
    }
    
    var path: String {
        switch self {
        case .getBanksList:
            return "banks?"
        }
    }

    var urlString: String {
        switch self {
        default:
            return String(format: "%@%@", baseURL, path)
        }
    }
}

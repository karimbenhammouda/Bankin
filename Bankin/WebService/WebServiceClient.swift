//
//  WebServiceClient.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Alamofire

class WebServiceClient {
    let keychen: KeychainManager!
    let headers: HTTPHeaders = [Constants.ApiHeader.bankinVersionKey: Constants.ApiHeader.bankinVersionValue]
    
    init(keychen: KeychainManager) {
        self.keychen = keychen
        setUserAccount()
    }
    
    func setUserAccount() {
        guard self.keychen.getUserAccountKey() != nil else {
            return
        }
        self.keychen.setUserAccountKey()
    }
}

extension WebServiceClient {
    func getBanksList(completion: @escaping (Bool) -> Void) {
        guard let clientSecret = self.keychen.getUserAccountKey() else {
            return
        }
        let parameters = [Constants.ApiGetBankParametres.limitKey: Constants.ApiGetBankParametres.limitValue, Constants.ApiClientId.clientIdKey: Constants.ApiClientId.clientIdValue, Constants.ApiClientSecret.clientSecretKey: clientSecret]
        GetApiRequest(APIRoute.getBanksList.urlString, parameters, headers, completion: { (finished, response) in
            if(finished)
            {
                do {
                    if let data = response as? Data {
                        let decoder = JSONDecoder()
                        let banksList = try decoder.decode(BanksList.self, from: data)
                        banksList.saveDataBase()
                        completion(true)
                    }
                } catch {
                    print(String.init(format: ApiLog.jsonErrorDeserializing,"\(error.localizedDescription)"))
                }
            }
            else {
                print(ApiLog.serverError)
                completion(false)
            }
        })
    }
}

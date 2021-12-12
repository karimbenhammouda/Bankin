//
//  AppCoordinator.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 09/12/2021.
//

import UIKit

final class AppCoordinator: Coordinator {

    private var window: UIWindow?
    private var banksListCoordinator: BanksListCoordinator!
    private var webServiceClient = WebServiceClient(keychen: KeychainManager())

    init(window: UIWindow) {
        self.window = window
    }

    @discardableResult
    func start() -> UIViewController {
        banksListCoordinator = BanksListCoordinator(webServiceClient: webServiceClient)
        let banksListVC = banksListCoordinator.start()
        self.window?.rootViewController = banksListVC
        self.window?.makeKeyAndVisible()
        return banksListVC
    }
}

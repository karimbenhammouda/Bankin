//
//  BanksListCoordinator.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import Foundation
import UIKit

class BanksListCoordinator: Coordinator {
    
    var rootViewController: UINavigationController!
    var webServiceClient: WebServiceClient
    
    init(webServiceClient: WebServiceClient) {
        self.webServiceClient = webServiceClient
    }
    
    func start() -> UIViewController {
        let banksListVC = BanksListCoordinator.instantiateViewController() as! BanksListViewController
        rootViewController = UINavigationController(rootViewController: banksListVC)
        let viewModel = BanksListViewModel(webServiceClient: webServiceClient)
        banksListVC.viewModel = viewModel
        return rootViewController
    }
}

extension BanksListCoordinator : StoryboardInitializable {
    static var storyboardName: UIStoryboard.Storyboard {
        return .banksList
    }
}

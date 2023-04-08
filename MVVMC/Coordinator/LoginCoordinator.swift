//
//  LoginCoordinator.swift
//  MVVMC
//
//  Created by Rafael Veronez Dias on 08/04/23.
//

import Foundation
import UIKit

class LoginCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController
    
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    required init(navigationController: UIViewController) {
        self.navigationController = navigationController as! UINavigationController
    }
    
    
}

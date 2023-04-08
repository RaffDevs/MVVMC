//
//  LoginViewController.swift
//  MVVMC
//
//  Created by Rafael Veronez Dias on 08/04/23.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - Properts
    private var loginScreen: LoginScreen?

    
    //MARK: - Overrides
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.setupDelegate(delegate: self)
    }

}

extension LoginViewController: LoginScreenProtocol {
    func onRegisterPress() {
        let coordinator = RegisterCoordinator()
        coordinator.start()
    }
    
    func onLoginPress() {
        print(#function)
    }
    
    
}

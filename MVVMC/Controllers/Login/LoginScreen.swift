//
//  LoginScreen.swift
//  MVVMC
//
//  Created by Rafael Veronez Dias on 08/04/23.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func onRegisterPress()
    func onLoginPress()
}

class LoginScreen: UIView {
    //MARK: - Properts
    weak var delegate: LoginScreenProtocol?
    
    //MARK: - Elements
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(onLoginTapped), for: .touchUpInside)
        
        return button
    }()
    
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Registrar", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(onRegisterTapped), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupElements()
        setupConstraits()
        
        backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    
    @objc
    func onRegisterTapped(_ sender: UIButton) {
        self.delegate?.onRegisterPress()
    }
    
    @objc
    func onLoginTapped(_ sender: UIButton) {
        self.delegate?.onLoginPress()
    }
    
    //MARK: - Setup
    
    func setupDelegate(delegate: LoginScreenProtocol) {
        self.delegate = delegate
    }
    
    private func setupElements() {
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    private func setupConstraits() {
        NSLayoutConstraint.activate([
            loginButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 50),
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
        
        ])
    }
    
}

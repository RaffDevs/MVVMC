//
//  Coordinator.swift
//  MVVMC
//
//  Created by Rafael Veronez Dias on 08/04/23.
//

import Foundation
import UIKit

protocol CoordinatorProtocol {
    var navigationController: UINavigationController { get }
    
    func start()
    
    init(navigationController: UIViewController)
}

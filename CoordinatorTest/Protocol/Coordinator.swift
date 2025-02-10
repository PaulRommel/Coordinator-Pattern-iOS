//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Popov Pavel on 29.01.2025.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

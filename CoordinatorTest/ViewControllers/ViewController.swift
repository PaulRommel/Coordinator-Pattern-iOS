//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Popov Pavel on 29.01.2025.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    
}


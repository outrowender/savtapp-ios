//
//  MainViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 24/02/22.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: fix this logic
        let isLoggedIn = "true"

        if isLoggedIn == "false" {
            let login = LoginViewController()
            self.navigationController?.setViewControllers([login], animated: false)
        } else {
            let services = ServiceListViewController()
            self.navigationController?.setViewControllers([services], animated: false)
        }

    }
}

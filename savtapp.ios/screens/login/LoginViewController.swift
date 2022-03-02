//
//  LoginViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 24/02/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }

    
    @IBAction func login(_ sender: Any) {
        let services = ServiceListViewController()
        self.navigationController?.setViewControllers([services], animated: true)
    }
    
    func configureNavigationBar(){
        self.title = "My App"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.setNavigationBarHidden(false, animated: true)        
    }

}

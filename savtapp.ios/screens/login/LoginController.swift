//
//  ViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 12/02/22.
//

import UIKit

class LoginController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(){
        print("login?")
        navigationController?.pushViewController(ServiceListTableViewController(), animated: true)
    }
}


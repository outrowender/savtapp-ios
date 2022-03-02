//
//  ServiceReportViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 01/03/22.
//

import UIKit

class ServiceReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
    }
    
    func configureNavigationBar(){
        self.title = "Initial Report"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

}

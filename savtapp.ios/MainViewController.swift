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
        
        let isLoggedIn = "true"
        
        if isLoggedIn == "true" {
            let login = LoginViewController()
            self.navigationController?.setViewControllers([login], animated: false)
        }else{
            let services = ServiceViewController()
            self.navigationController?.setViewControllers([services], animated: false)
        }
       

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

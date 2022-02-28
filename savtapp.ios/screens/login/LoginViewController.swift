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
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        print("Login was done")
        
        let services = ServiceViewController()
        self.navigationController?.setViewControllers([services], animated: true)
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

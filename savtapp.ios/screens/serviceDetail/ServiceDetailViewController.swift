//
//  ServiceDetailViewController.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 28/02/22.
//

import UIKit

class ServiceDetailViewController: UIViewController {
    
    var model: ServiceModel?
        
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var confirmationInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let value = model {
            updateUI(service: value)
        }

    }
    
    func updateValues(for service: ServiceModel){
        model = service
    }
    
    func updateUI(service: ServiceModel){
        titleLabel.text = service.serviceTitle
        timeLabel.text = service.serviceTime
        descriptionLabel.text = service.serviceDetail
        emojiLabel.text = String(service.serviceUsernameEmoji)
        usernameLabel.text = service.serviceUsername
    }

    @IBAction func confirmButtonPressed(_ sender: Any) {
        
    }

}

//
//  ServiceTableViewCell.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var serviceTitle: UILabel!
    @IBOutlet weak var serviceTime: UILabel!
    @IBOutlet weak var serviceDetail: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    func update(for service: ServiceModel) {
        serviceTitle.text = service.serviceTitle
        serviceTime.text = service.serviceTime
        serviceDetail.text = service.serviceDetail
        usernameLabel.text = service.serviceUsername
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//
//  ServiceTableViewCell.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var useremojiLabel: UILabel!
    
    func update(for service: ServiceModel) {
        nameLabel.text = service.serviceTitle
        timeLabel.text = service.serviceTime
        detailLabel.text = service.serviceDetail
        usernameLabel.text = service.serviceUsername
        useremojiLabel.text = String(service.serviceUsernameEmoji)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

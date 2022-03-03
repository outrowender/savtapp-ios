//
//  ServiceConfirmationTableViewCell.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 02/03/22.
//

import UIKit

class ServiceConfirmationViewCell: UITableViewCell {
    
    var model: ServiceModel?
    
    @IBOutlet weak var serviceTitleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBAction func refuseButtonAction(_ sender: Any) {
        print("refused \(model!.serviceId)")
    }
    
    @IBAction func accecptButtonAction(_ sender: Any) {
        print("accepted \(model!.serviceId)")
    }
    
    func update(for service: ServiceModel) {
        model = service
        serviceTitleLabel.text = service.serviceTitle
        timeLabel.text = service.serviceTime
        detailLabel.text = service.serviceDetail
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

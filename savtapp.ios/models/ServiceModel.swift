//
//  ServiceModel.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceModel {
    var serviceTitle: String
    var serviceTime: String
    var serviceDetail: String
    var serviceUsername: String
    
    init(title: String, time: String, detail: String, username: String) {
        serviceTitle = title
        serviceTime = time
        serviceDetail = detail
        serviceUsername = username
    }
}

//
//  ServiceModel.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 25/02/22.
//

import UIKit

class ServiceModel {
    var serviceId: Int
    var serviceTitle: String
    var serviceTime: String
    var serviceUsername: String
    var serviceUsernameEmoji: Character
    var serviceDetail: String
    
    init(id: Int, title: String, time: String, username: String, usernameEmoji: Character, detail: String) {
        serviceId = id
        serviceTitle = title
        serviceTime = time        
        serviceUsername = username
        serviceUsernameEmoji = usernameEmoji
        serviceDetail = detail
    }
}

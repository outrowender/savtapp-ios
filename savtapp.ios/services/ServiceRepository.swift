//
//  ServiceRepository.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 01/03/22.
//

import Foundation
import Fakery



class ServiceRepository {
    func getServices() -> [ServiceModel] {
        
        let faker = Faker(locale: "en-US")
        
        let serviceCount = Array(repeating: 0, count: 10)
        
        return serviceCount.enumerated().map{(index, _) in
            ServiceModel(
                id: index,
                title: faker.name.title(),
                time: "10h20",
                username: faker.name.name(),
                usernameEmoji: "🤡",
                detail: faker.lorem.paragraphs(amount: 1)
            )
        }
        
    }
}

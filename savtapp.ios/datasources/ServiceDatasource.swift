//
//  ServiceRepository.swift
//  savtapp.ios
//
//  Created by Wender Patrick on 01/03/22.
//

import Foundation
import Fakery



class ServiceDatasource {
    func getServices() -> [ServiceModel] {
        
        let faker = Faker(locale: "en-US")
        
        let serviceCount = Array(repeating: 0, count: 10)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        return serviceCount.enumerated().map{(index, _) in
            
            let dateString = dateFormatter.string(from: faker.date.forward(10))
            
            return ServiceModel(
                id: index,
                title: faker.name.title(),
                time: dateString,
                username: faker.name.name(),
                usernameEmoji: "🤡",
                detail: faker.lorem.paragraphs(amount: 1)
            )
        }
        
    }
}

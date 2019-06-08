//
//  Models.swift
//  Restoran
//
//  Created by Furkan Sabaz on 7.06.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import Foundation


struct business : Codable {
    let id : String
    let name : String
    let imageUrl : URL
    let distance : Double
}

struct TumVeri : Codable {
    let businesses : [business]
}


struct RestoranListViewModel {
    let id : String
    let isYeriAdi : String
    let gorunUrl : URL
    let uzaklik : String
    
    init(yer : business) {
        
        self.isYeriAdi = yer.name
        self.id = yer.id
        self.gorunUrl = yer.imageUrl
        self.uzaklik = "\(String(format: "%.2f", (yer.distance/1000)))"
    }
    
}
//
//  USStateModel.swift
//  U.S. States
//
//  Created by Jorge Giannotta on 10/05/21.
//

import Foundation
import MapKit

struct StateUS: Codable, Identifiable {
    let id : String
    let name : String
    let date : String
    let fact : String
    let latitude : Double
    let longitude : Double
    let nickname : String
    let motto : String
    
    //Computed Property
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

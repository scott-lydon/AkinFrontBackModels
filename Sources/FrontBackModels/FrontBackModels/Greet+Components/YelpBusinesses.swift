//
//  YelpBusinesses.swift
//  akin
//
//  Created by Scott Lydon on 3/28/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation
import CoreLocation

public enum Yelp {}

import CoreLocation

extension CLLocationCoordinate2D: Codable {
    public enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let latitude = try container.decode(Double.self, forKey: .latitude)
        let longitude = try container.decode(Double.self, forKey: .longitude)
        self.init(latitude: latitude, longitude: longitude)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
    }
}


public extension Yelp {
        
    struct Business: Codable {

        public struct Category {
            let alias: String
            let title: String
        }
        
        var alias: String? = nil
        var coordinate: CLLocationCoordinate2D? = nil
        var location: Location? = nil
        var name: String? = nil
    }
}

public extension Yelp.Business {
    
    struct Location: Codable {
        var displayAddress: [String]
    }
}

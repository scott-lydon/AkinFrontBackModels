//
//  Greet.Update.Status.swift
//  akin
//
//  Created by Scott Lydon on 8/11/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

public extension Greet.Update {
    
    enum Status: String, Codable {
        case confirmedMet, enroute, exceededRange, rejectedOther, viewed
    }
}

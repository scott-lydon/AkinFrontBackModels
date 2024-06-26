//
//  AppNotification.swift
//  akin
//
//  Created by Scott Lydon on 4/9/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import UserNotifications

public extension Greet {
    
    enum Notification: Codable {
        case getRating(Greet.Notification.LocalModel)
        case greet(Greet)
        case silentLocationUpdate
        
        init(localNotificationModel: Greet.Notification.LocalModel) {
            self = .getRating(localNotificationModel)
        }
    }
}

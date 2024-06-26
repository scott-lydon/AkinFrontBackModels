//
//  Week.Day.Hour.swift
//  akin
//
//  Created by Scott Lydon on 4/2/24.
//  Copyright © 2024 ElevatedUnderdogs. All rights reserved.
//

import Foundation
// Use conditional imports to import platform-specific frameworks
#if canImport(UIKit)
import UIKit
typealias ImageType = UIImage
#elseif canImport(AppKit)
import AppKit
typealias ImageType = NSImage
#else
// Define a placeholder type or import another graphic framework as needed
#endif

public extension Week.Day {

    struct Hour: Codable {

        public enum AMPM: String, Codable {
            case am, pm
        }

        // Custom CodingKeys to exclude btn and img from Codable operations
        public enum CodingKeys: String, CodingKey {
            case count
            case amPM
            case travelMethod
        }

        let count: Int
        let amPM: AMPM // Codable
#if canImport(UIKit)
        var btn: UIButton?
#endif
        var travelMethod: TravelMethod // Codable
    }
}

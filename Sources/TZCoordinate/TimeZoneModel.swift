//
//  File.swift
//  
//
//  Created by Ramunas Jurgilas on 2022-10-24.
//

import Foundation

struct TimeZone: Codable {
    let countryCode, comments, zone: String
    let latitude, longitude: Double

    enum CodingKeys: String, CodingKey {
        case countryCode = "country_code"
        case latitude, longitude, comments, zone
    }
}

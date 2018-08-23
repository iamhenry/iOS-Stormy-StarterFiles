//
//  CurrentWeather.swift
//  Stormy
//
//  Created by Henry Moran on 8/21/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit

//Struct as data model
// Model the data from the Dark Sky AP docs
struct CurrentWeather {
    let temperature: Double
    let humidity: Double
    let precipProbability: Double
    let summary: String
    let icon: String
}

// This extension is being used to convert a String from the API to an image using the icon name in the asset folder
extension CurrentWeather {
    var iconImage: UIImage {
        switch icon {
        case "clear-day": return #imageLiteral(resourceName: "clear-day")
        case "clear-night": return #imageLiteral(resourceName: "clear-night")
        case "rain": return #imageLiteral(resourceName: "rain")
        case "snow": return #imageLiteral(resourceName: "snow")
        case "sleet": return #imageLiteral(resourceName: "sleet")
        case "wind": return #imageLiteral(resourceName: "wind")
        case "fog": return #imageLiteral(resourceName: "fog")
        case "cloudy": return #imageLiteral(resourceName: "cloudy")
        case "partly-cloudy-day": return #imageLiteral(resourceName: "partly-cloudy")
        case "partly-cloud-night": return #imageLiteral(resourceName: "partly-cloudy-night")
        default: return #imageLiteral(resourceName: "default")
        }
    }
}

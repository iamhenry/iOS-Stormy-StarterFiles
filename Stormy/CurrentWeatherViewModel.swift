//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Henry Moran on 8/22/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit

// we are creating this model to format the data from the API to display the temperature
struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    //overiding the init from CurrentWeather
    init(model: CurrentWeather) {
        let roundedTemp = Int(model.temperature)
        self.temperature = "\(roundedTemp)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let precipitationPercentValue = Int(model.precipProbability * 100)
        self.precipitationProbability = "\(precipitationPercentValue)%"
        
        self.summary = model.summary
        self.icon = model.iconImage
    }
}

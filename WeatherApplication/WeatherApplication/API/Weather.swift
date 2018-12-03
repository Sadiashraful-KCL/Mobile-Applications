//
//  Weather.swift
//  WeatherApplication
//
//  Created by Sadi Ashraful on 14/08/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import Foundation

class Weather: Codable {
    let forecast: Forecast
}

struct Forecast: Codable {
    let forcastText: ForecastText
}

struct ForcastText {
    let date : String
    let forcastDays: 
}

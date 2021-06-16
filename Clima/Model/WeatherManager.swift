//
//  WeatherManager.swift
//  Clima
//
//  Created by Mahalakshmi Raveenthiran on 16/06/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=396899f1e8ab7ffac826db7cb3492d13&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
}

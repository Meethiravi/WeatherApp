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
        performRequest(urlString: urlString)
    }
    func performRequest(urlString: String) {
        //1.create url
        if let url = URL(string: urlString) {
            //2.create a url session
            let session = URLSession(configuration: .default)
            //3.give session a task
            let task = session.dataTask(with: url, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
            //4.start the task
            task.resume()
        }
    }
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        
    }
}

//
//  WeatherForecast.swift
//  WeatherAppIOS
//
//  Created by Abbas Bukhari on 25.11.2022.
//

import Foundation
class WeatherForecast : Codable
{
    var temp : Double?
    var datetime : String?
    var weather : WeatherDetail?
    
    private init(){}
}

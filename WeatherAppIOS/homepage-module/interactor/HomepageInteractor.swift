//
//  HomepageInteractor.swift
//  WeatherAppIOS
//
//  Created by Abbas Bukhari on 25.11.2022.
//

import Foundation
import UIKit

class HomepageInteractor : PresenterToInteractorHomepageProtocol
{
    var homePresenter: InteractorToPresenterHomepageProtocol?
    
    func getCurrentWeather(cityName : String) {
        
        
        let url = URL(string: "https://api.weatherbit.io/v2.0/current?city=\(cityName)&key=c835f226c1834b01bc3a9fc6f1d422ee")!
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            
            if error != nil || data == nil
            {
                print("Error")
                return
            }
            
            do
            {
                let answer = try JSONDecoder().decode(WeatherResponse.self, from: data!)
                var list = [Weather]()
                if let answerList = answer.data
                {
                    list = answerList
                }
                
                self.homePresenter?.sendToDataPresenter(weatherInfo: list)
            }
            catch
            {
                print("JSON ERROR : \(error.localizedDescription)")
            }
            
        }.resume()
        
    }
    
    func sevenDayWeather(cityName : String) {
        
        let url = URL(string: "https://api.weatherbit.io/v2.0/forecast/daily?city=\(cityName)&key=c835f226c1834b01bc3a9fc6f1d422ee")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil || data == nil
            {
                print("Error")
                return
            }
            
            do
            {
                let answer = try JSONDecoder().decode(WeatherForecastResponse.self, from: data!)
                var listTwo = [WeatherForecast]()
                if let answerWeatherList = answer.data
                {
                    listTwo = answerWeatherList
                }
                
                self.homePresenter?.sendToDataPresenter(weatherInfo: listTwo)
                
            }
            catch
            {
                print("JSON ERROR : \(error.localizedDescription)")
            }
        }.resume()
        
    }
    
    
}


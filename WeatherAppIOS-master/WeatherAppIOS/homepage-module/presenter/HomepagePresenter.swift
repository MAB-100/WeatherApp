//
//  HomepagePresenter.swift
//  WeatherAppIOS
//
//  Created by Abbas Bukhari on 25.11.2022.
//

import Foundation

class HomepagePresenter : ViewToPresenterHomepageProtocol
{
    var homeInteractor: PresenterToInteractorHomepageProtocol?
    
    var homeView: PresenterToViewHomepageProtocol?
    
    func getCurrentWeather(cityName : String) {
        homeInteractor?.getCurrentWeather(cityName : cityName)
    }
    
    func sevenDayWeather(cityName : String) {
        homeInteractor?.sevenDayWeather(cityName : cityName)
    }
    
}

extension HomepagePresenter : InteractorToPresenterHomepageProtocol
{
    func sendToDataPresenter(weatherInfo : Array<Weather>) {
        homeView?.sendToDataView(weatherInfo: weatherInfo)
    }
    func sendToDataPresenter(weatherInfo: Array<WeatherForecast>) {
        homeView?.sendToDataView(weatherInfo: weatherInfo)
    }
    
}


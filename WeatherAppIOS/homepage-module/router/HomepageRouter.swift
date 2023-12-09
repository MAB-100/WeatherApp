//
//  HomepageRouter.swift
//  WeatherAppIOS
//
//  Created by Abbas Bukhari on 25.11.2022.
//

import Foundation

class HomepageRouter : PresenterToRouterHomepageProtocol
{
    static func createModule(ref: HomepageViewController) {
        
        let presenter = HomepagePresenter()
        ref.homePresenterObject = presenter
        ref.homePresenterObject?.homeView = ref
        ref.homePresenterObject?.homeInteractor = HomepageInteractor()
        ref.homePresenterObject?.homeInteractor?.homePresenter = presenter
    }
    
}

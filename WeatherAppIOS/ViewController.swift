//
//  ViewController.swift
//  WeatherAppIOS
//
//  Created by Abbas Bukhari on 25.11.2022.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var launchAnimated: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        launchAnimate()
        
    }
    
    func launchAnimate()
    {
        launchAnimated.play{ (finished) in
            self.performSegue(withIdentifier: "toHomepage", sender: nil)
        }
        
    }
    
}


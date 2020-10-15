//
//  ViewController.swift
//  Traffic Light
//
//  Created by Светлана Сафонова on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var orangeLight: UIView!
    
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        orangeLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
    }

    @IBAction func pushButton() {
       
        if redLight.alpha == 1 && orangeLight.alpha == 0.3 &&
            greenLight.alpha == 0.3 {
            redLight.alpha = 0.3
            orangeLight.alpha = 1
        }
        if orangeLight.alpha == 1 && redLight.alpha == 0.3 && greenLight.alpha == 0.3 {
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
        }
        redLight.alpha = 1
        button.setTitle("Next", for: .normal)
    }
    
}


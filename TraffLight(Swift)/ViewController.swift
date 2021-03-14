//
//  ViewController.swift
//  TraffLight(Swift)
//
//  Created by Берлинский Ярослав Владленович on 14.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redColor.alpha = 0.1
        yellowColor.alpha = 0.1
        greenColor.alpha = 0.1
        redColor.layer.cornerRadius = 30
        yellowColor.layer.cornerRadius = 30
        greenColor.layer.cornerRadius = 30
    }

    @IBAction func executeChanging() {
        if (redColor.alpha != 1) && (yellowColor.alpha != 1) && (greenColor.alpha != 1) {
            redColor.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
        else if (redColor.alpha == 1) && (yellowColor.alpha != 1) && (greenColor.alpha != 1) {
            redColor.alpha = 0.1
            yellowColor.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
        else if (redColor.alpha != 1) && (yellowColor.alpha == 1) && (greenColor.alpha != 1) {
            yellowColor.alpha = 0.1
            greenColor.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
        else if (redColor.alpha != 1) && (yellowColor.alpha != 1) && (greenColor.alpha == 1) {
            redColor.alpha = 1
            greenColor.alpha = 0.1
            startButton.setTitle("NEXT", for: .normal)
        }
    }   
}


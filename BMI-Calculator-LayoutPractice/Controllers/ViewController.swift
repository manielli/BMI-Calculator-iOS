//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let sliderValue = String(format: "%.2f", sender.value)
        heightLabel.text = sliderValue + "m"
    }
    @IBAction func weighSliderChanged(_ sender: UISlider) {
//        let sliderValue = Int(sender.value)
        let sliderValue = String(format: "%.1f", sender.value)
        weightLabel.text = sliderValue + "Kg"
    }
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
//        let BMI = String(format: "%.2f", Float(weight)/Float(height*height))
        let bmi = String(format: "%.2f", (weight / pow(height, 2)))
        print(bmi)
    }
}


//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mani-Jafari on 2022-06-17.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue: String = "0.0"
    
    func getBMIValue() -> String {
        return bmiValue
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
//        let BMI = String(format: "%.2f", Float(weight)/Float(height*height))
        bmiValue = String(format: "%.2f", (weight / pow(height, 2)))
    }
}

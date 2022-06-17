//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mani-Jafari on 2022-06-17.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    func getBMIValue() -> String {
//        if bmi != nil {
//            let bmiTo1DecimalPlace = String(format: "%.1f", bmi!)
//            return bmiTo1DecimalPlace
//        } else {
//            return 0.0
//        }
//        
//        if let safeBMI = bmi {
//            let bmiTo1DecimalPlace = String(format: "%.1f", safeBMI)
//            return bmiTo1DecimalPlace
//        } else {
//            return 0.0
//        }
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
//        let bmi = weight / (height * height)
        bmi = weight / pow(height, 2)
    }
}

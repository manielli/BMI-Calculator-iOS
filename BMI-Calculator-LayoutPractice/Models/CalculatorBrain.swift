//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mani-Jafari on 2022-06-17.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
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
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
//        let bmiValue = weight / (height * height)
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }

    }
}

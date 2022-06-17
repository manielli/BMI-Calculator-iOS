//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mani-Jafari on 2022-06-17.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        view.backgroundColor = .red
    }
}

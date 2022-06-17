//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Mani-Jafari on 2022-06-17.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bmiColor: UIColor?
    var bmiAdvice: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        view.backgroundColor = bmiColor
        adviceLabel.text = bmiAdvice
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
//        or dismiss(animated: true)
    }

    

}

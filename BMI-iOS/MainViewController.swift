//
//  ViewController.swift
//  BMI-iOS
//
//  Created by Tardes on 13/1/26.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var heightStepper: UIStepper!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var resultlabel: UILabel!
    
    @IBOutlet weak var calculatebutton: UIView!
    @IBOutlet weak var weightlabel: UILabel!
    @IBOutlet weak var heightlabel: UILabel!

    var weight: Float = 60.0
    var height: Float = 170.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     
    }

    @IBAction func onWeightChanged(_ sender: Any) {
    weight = Float(weightSlider.value)
        weightlabel.text = "\(Int(weight)) kg"
    
    }
        
        @IBAction func onHeightChanged(_ sender: Any) {
         height = Float(heightStepper.value)
            heightlabel.text = "\(Int(height)) cm"
            
        }
    
    @IBAction func calculateBMI(_ sender: Any) {
        
        let heightInMeters = height / 100.0
        
        let bmi = weight / powf(heightInMeters, 2)
        
        resultlabel.text = String(format: "%.2f", bmi)
 
                      
        
    }
}








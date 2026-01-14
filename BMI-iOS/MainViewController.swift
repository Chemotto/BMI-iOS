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
    @IBOutlet weak var resultDescriptionlabel: UILabel!
    
    
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
 
        
        var resultColor = UIColor.black
        var resultText = ""
        
        
        
        
        
        switch bmi {
            case ..<18.5:
            // bajo peso
            resultText = "Bajo peso"
            resultColor = UIColor.bmiUnderweight
        
            case 18,5..<25:
            // peso normal
            resultText = "Peso normal"
            resultColor = UIColor.bmiNormalweight
          
            case 25..<30:
            // sobrepeso
            resultText = "Sobrepeso"
            resultColor = UIColor.bmiOverweight
            
        case 30..<40:
            // obesidad
            resultText = "Obesidad"
            resultColor = UIColor.bmiObesity
            
        default:
            //obesidad extrema
            resultText = "Obesidad extrema"
            resultColor = UIColor.bmiExtremeObesity
           
        }
        resultDescriptionlabel.text = resultText
            resultlabel.textColor = resultColor
            resultDescriptionlabel.textColor = resultColor
    }
}










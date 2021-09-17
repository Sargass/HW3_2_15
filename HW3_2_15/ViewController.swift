//
//  ViewController.swift
//  HW3_2_15
//
//  Created by Алексей on 10.09.2021.
//

import UIKit

class ViewController: UIViewController {

    // Labels
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    // Sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    // View
    @IBOutlet weak var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 20
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColorOnView()
        
        redLabel.text = setStringForLabel(from: redSlider)
        greenLabel.text = setStringForLabel(from: greenSlider)
        blueLabel.text = setStringForLabel(from: blueSlider)
        
        setColorOnView()
        
        setValue(for: redLabel, greenLabel, blueLabel)
        
    }
    
    @IBAction func changesOfSladers(_ sender: UISlider) {
        
        switch sender{
        case redSlider: redLabel.text = setStringForLabel(from: sender)
        case greenSlider: greenLabel.text = setStringForLabel(from: sender)
        case blueSlider: blueLabel.text = setStringForLabel(from: sender)
        default: break
        }
   
        setColorOnView()
    }
    
    private func setColorOnView(){
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    private func setStringForLabel(from slider: UISlider) -> String{
        String(format: "%.2f", slider.value)
    }
    
    private func setValue(for labels: UILabel...){
        labels.forEach {label in
            switch label.tag {
            case 0: redLabel.text = setStringForLabel(from: redSlider)
            case 1: greenLabel.text = setStringForLabel(from: greenSlider)
            case 2: blueLabel.text = setStringForLabel(from: blueSlider)
            default: break
            }
        }
    }
    
}


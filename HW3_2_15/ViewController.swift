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
        
        
        
    }

    func viewCurrent(){
        viewColor.layer.cornerRadius = 20
     
    }
    
    @IBAction func changesOfSladers() {
        
    }
    
}


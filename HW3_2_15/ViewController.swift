//
//  ViewController.swift
//  HW3_2_15
//
//  Created by Алексей on 10.09.2021.
//

import UIKit

class ViewController: UIViewController {

    // Labels
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    
    // Sliders
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    
    // View
    @IBOutlet weak var ViewColor: UIView!
    
    // Variables
    private var currentRed: CGFloat  = 0
    private var currentBlue: CGFloat = 0
    private var currentGreen: CGFloat = 0
    private var currrentColorView: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ViewColor.layer.cornerRadius = 20
      //  ViewColor.layer.backgroundColor = 0
        
    }
    
//    func colorFromSliders() -> UIColor? {
    
 //   }

}


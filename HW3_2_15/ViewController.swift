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
        viewCurrent()
        
        redSliderView()
        blueSliderView()
        greenSliderView()

    }
    
    func redSliderView() {
        RedSlider.value = 125
        RedSlider.minimumValue = 0
        RedSlider.maximumValue = 255
        RedSlider.minimumTrackTintColor = .red
    }
    
    func blueSliderView() {
        BlueSlider.value = 125
        BlueSlider.minimumValue = 0
        BlueSlider.maximumValue = 255
        BlueSlider.minimumTrackTintColor = .blue
    }
    
    func greenSliderView(){
        GreenSlider.value = 125
        GreenSlider.minimumValue = 0
        GreenSlider.maximumValue = 255
        GreenSlider.minimumTrackTintColor = .green
    }
    
    func viewCurrent(){
        ViewColor.layer.cornerRadius = 20
        ViewColor.layer.backgroundColor = .init(red: currentRed, green: currentGreen, blue: currentBlue, alpha: 1)
    }
    
    @IBAction func redSliderAction() {
        RedLabel.text = String(Int(RedSlider.value))
        currentRed = CGFloat(RedSlider.value)
        viewCurrent()
    }
    
    @IBAction func blueSliderAction() {
        BlueLabel.text = String(Int(BlueSlider.value))
        currentBlue = CGFloat(BlueSlider.value)
        viewCurrent()
    }
    
    @IBAction func greenSliderAction() {
        GreenLabel.text = String(Int(GreenSlider.value))
        currentGreen = CGFloat(GreenSlider.value)
        viewCurrent()
    }
    
}


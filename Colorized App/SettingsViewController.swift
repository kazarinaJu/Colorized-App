//
//  ViewController.swift
//  Colorized App
//
//  Created by Юлия Ястребова on 24.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var selectedColor: UIColor!
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = selectedColor

        setSliderValue()
        setLabelText()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
  
// MARK: - Settings methods
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setSliderValue() {
        let red = Float(selectedColor.cgColor.components?[0] ?? 0.0)
        let green = Float(selectedColor.cgColor.components?[1] ?? 0.0)
        let blue = Float(selectedColor.cgColor.components?[2] ?? 0.0)
        
        redSlider.value = red
        greenSlider.value = green
        blueSlider.value = blue
    }
    
    private func setLabelText() {
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

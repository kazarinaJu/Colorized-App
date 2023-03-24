//
//  ViewController.swift
//  Colorized App
//
//  Created by Юлия Ястребова on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorBlock: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorBlock.layer.cornerRadius = 10
        setupSliderValues()
        setupLabels()
    }
    
    @IBAction func redSliderValueChanged() {
        redSlider.value = round((.random(in: 0...1)) * 100) / 100
        redLabel.text = "Red: \(redSlider.value)"
        colorBlock.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func greenSliderValueChanged() {
        greenSlider.value = round((.random(in: 0...1)) * 100) / 100
        greenLabel.text = "Green: \(greenSlider.value)"
        colorBlock.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func blueSliderValueChanged() {
        blueSlider.value = round((.random(in: 0...1)) * 100) / 100
        blueLabel.text = "Blue: \(blueSlider.value)"
        colorBlock.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

extension ViewController {
    private func setupSliderValues() {
        redSlider.value = round((.random(in: 0...1)) * 100) / 100
        greenSlider.value = round((.random(in: 0...1)) * 100) / 100
        blueSlider.value = round((.random(in: 0...1)) * 100) / 100
    }
    
    private func setupLabels() {
        redLabel.text = "Red: \(redSlider.value)"
        greenLabel.text = "Green: \(greenSlider.value)"
        blueLabel.text = "Blue: \(blueSlider.value)"
    }
}

//
//  ViewController.swift
//  Colorized App
//
//  Created by Юлия Ястребова on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var rLabel: UILabel!
    @IBOutlet var gLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliderValues()
        setupLabels()
        setupColorView()
    }
}

extension ViewController {
    private func setupSliderValues() {
        rSlider.value = .random(in: 0...1)
        gSlider.value = .random(in: 0...1)
        bSlider.value = .random(in: 0...1)
    }
    
    private func setupLabels() {
        rLabel.text = String(format: "%.2f", rSlider.value)
        gLabel.text = String(format: "%.2f", gSlider.value)
        bLabel.text = String(format: "%.2f", bSlider.value)
    }
    
    private func setupColorView() {
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = UIColor(
            red: CGFloat(rSlider.value),
            green: CGFloat(gSlider.value),
            blue: CGFloat(bSlider.value),
            alpha: 1
        )
    }
}

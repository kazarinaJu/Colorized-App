//
//  MainViewController.swift
//  Colorized App
//
//  Created by Юлия Ястребова on 11.04.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        colorView.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.selectedColor = colorView.backgroundColor
    }
}

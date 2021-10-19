//
//  ViewController.swift
//  Car_Options_Mini_App
//
//  Created by Carmen on 10/17/21.
//

import UIKit

class ViewController: UIViewController {
    var color = ""
    var package = ""
    var accessories = ""
    var results = ""
    
    
    
    @IBOutlet var whiteColorButton: UIButton!
    @IBOutlet var blueColorButton: UIButton!
    @IBOutlet var redColorButton: UIButton!
    
    @IBOutlet var trunkCoverButton: UIButton!
    @IBOutlet var navigationButton: UIButton!
    @IBOutlet var moonRoofButton: UIButton!
    
    @IBOutlet var petRampButton: UIButton!
    @IBOutlet var cargoNetButton: UIButton!
    @IBOutlet var cargoTrayButton: UIButton!
    @IBOutlet var wirelessChargerButton: UIButton!
    @IBOutlet var cargoLinerButton: UIButton!
    @IBOutlet var sunShadeButton: UIButton!
    
    
    @IBOutlet var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseColor(_ sender: UIButton) {
        color = sender.currentTitle!
    }
    

    @IBAction func choosePackage(_ sender: UIButton) {
        package = sender.currentTitle!
    }
    
    @IBAction func chooseAccessories(_ sender: UIButton) {
        accessories = sender.currentTitle!
    }
    
    @IBAction func submitResults(_ sender: Any) {
        results = ("Car Color: " + color + "Package Choice: " + package + "Accessory Choice: " + accessories)
        print(results)
    }
    
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


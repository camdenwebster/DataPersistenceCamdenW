//
//  ViewController.swift
//  SaveMyDefaultsCamdenW
//
//  Created by Camden Webster on 3/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySerialNumber: UITextField!
    
    @IBOutlet weak var mySlider: UISlider!
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myDeleteButton(_ sender: UIButton) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
    }
    
    @IBAction func myLoadButton(_ sender: UIButton) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func mySaveButton(_ sender: UIButton) {
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
}


//
//  ViewController.swift
//  FoodTracker
//
//  Created by cheng chao on 2019/12/20.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sw_red: UISwitch!
    @IBOutlet weak var sw_green: UISwitch!
    @IBOutlet weak var sw_blue: UISwitch!
    @IBOutlet weak var sw_alpha: UISwitch!
    
    @IBOutlet weak var sl_red: UISlider!
    @IBOutlet weak var sl_green: UISlider!
    @IBOutlet weak var sl_blue: UISlider!
    @IBOutlet weak var sl_alpha: UISlider!
    
    
    @IBOutlet weak var emptyView: UIView!
    @IBAction func changeColor(_ sender: UISwitch) {
        // updateColor()
        updateControlState()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emptyView.layer.borderWidth = 5
        emptyView.layer.cornerRadius = 20
        emptyView.layer.borderColor = UIColor.white.cgColor
        updateControlState()
        updateColor()
    }
    
    func updateColor()  {
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        var alpha:CGFloat = 0
        
        if sw_red.isOn {
            red = CGFloat(sl_red.value)
        }
        if sw_green.isOn {
            green = CGFloat(sl_green.value)
        }
        if sw_blue.isOn {
            blue = CGFloat(sl_blue.value)
        }
        if sw_alpha.isOn {
            alpha = CGFloat(sl_alpha.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        emptyView.backgroundColor = color
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        sw_red.isOn = false
        sw_green.isOn = false
        sw_blue.isOn = false
        sw_alpha.isOn = true
        
        sl_alpha.value = 1
        sl_red.value = 1
        sl_green.value = 1
        sl_blue.value = 1
        updateColor()
    }
    
    func updateControlState()  {
        sl_red.isEnabled = sw_red.isOn
        sl_green.isEnabled = sw_green.isOn
        sl_blue.isEnabled = sw_blue.isOn
    }
}


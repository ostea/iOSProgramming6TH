//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by cheng chao on 2019/12/4.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import UIKit

class ConversionViewController : UIViewController {
    
    @IBOutlet var celsiulabel : UILabel!
    
    @IBAction func fsFiedlEditChanged(_ textFild: UITextField){
        if let text = textFild.text {
            celsiulabel.text = text
        }else{
            celsiulabel.text="???"
        }
    }
}


//
//  ViewController.swift
//  ElemwntQuiz
//
//  Created by cheng chao on 2019/12/28.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    var curElementIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[curElementIndex]
    }
    
    @IBAction func gotoNextElement(_ sender: UIButton) {
        curElementIndex += 1
        if curElementIndex >= elementList.count {
            curElementIndex = 0
        }
        updateElement()
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[curElementIndex]
        let image = UIImage(named: elementName)
        imageview.image = image
    }
}


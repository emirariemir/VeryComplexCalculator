//
//  ViewController.swift
//  VeryComplexCalculator
//
//  Created by Emir on 13.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var finishedTyping: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func symbolPressed(_ sender: UIButton) {
        finishedTyping = true
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if let num = sender.titleLabel?.text {
            if finishedTyping {
                numberLabel.text = num
                finishedTyping = false
            } else {
                numberLabel.text = numberLabel.text! + num
            }
        }
    }
    
}


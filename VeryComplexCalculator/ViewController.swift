//
//  ViewController.swift
//  VeryComplexCalculator
//
//  Created by Emir on 13.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    private var finishedTyping: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func symbolPressed(_ sender: UIButton) {
        finishedTyping = true
        
        guard let number = Double(numberLabel.text!) else {
            fatalError("Cannot convert this into a Double!")
        }
        
        if let symbol = sender.titleLabel?.text {
            if symbol == "+/-" {
                numberLabel.text = String(number * -1)
            }
            
            if symbol == "AC" {
                numberLabel.text = "0"
            }
            
            if symbol == "%" {
                numberLabel.text = String(number / 100)
            }
        }
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


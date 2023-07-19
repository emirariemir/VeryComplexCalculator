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
    
    private var displayNumber: Double {
        get {
            guard let number = Double(numberLabel.text!) else {
                fatalError("Cannot convert this into a Double!")
            }
            return number
        }
        
        set {
            numberLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func symbolPressed(_ sender: UIButton) {
        finishedTyping = true
        
        if let symbol = sender.titleLabel?.text {
            if symbol == "+/-" {
                displayNumber *= -1
            }
            
            if symbol == "AC" {
                displayNumber = 0
            }
            
            if symbol == "%" {
                displayNumber *= 0.01
            }
        }
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if let num = sender.titleLabel?.text {
            if finishedTyping {
                numberLabel.text = num
                finishedTyping = false
            } else {
                if num == "." {
                    
                    let isInt = floor(displayNumber) == displayNumber
                    
                    if !isInt {
                        return
                    }
                }
                
                numberLabel.text = numberLabel.text! + num
            }
        }
    }
    
}


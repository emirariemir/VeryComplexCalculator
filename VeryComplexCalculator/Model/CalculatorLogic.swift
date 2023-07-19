//
//  CalculatorLogic.swift
//  VeryComplexCalculator
//
//  Created by Emir on 19.07.2023.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate (symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            }
            
            if symbol == "AC" {
                return 0
            }
            
            if symbol == "%" {
                return n * 0.01
            }
        }
        
        return nil
    }
}

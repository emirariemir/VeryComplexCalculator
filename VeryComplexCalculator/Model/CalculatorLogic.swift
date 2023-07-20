//
//  CalculatorLogic.swift
//  VeryComplexCalculator
//
//  Created by Emir on 19.07.2023.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    
    private var intermediateCalc: (op: String, value: Double)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate (symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n * 0.01
            } else if symbol == "=" {
                return performTwoNum(n2: n)
            } else {
                intermediateCalc = (op: symbol, value: n)
            }
        }
        return nil
    }
    
    private func performTwoNum(n2: Double) -> Double? {
        if let n1 = intermediateCalc?.value, let op = intermediateCalc?.op {
            if op == "+" {
                return n1 + n2
            }
            
            if op == "-" {
                return n1 - n2
            }
            
            if op == "x" {
                return n1 * n2
            }
            
            if op == "/" {
                return n1 / n2
            }
        }
        return nil
    }
}

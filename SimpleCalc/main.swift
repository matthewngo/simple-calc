//
//  main.swift
//  SimpleCalc
//
//  Created by Matthew Ngo on 10/8/17.
//  Copyright © 2017 Matthew Ngo. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns")

let input = readLine(strippingNewline:true)!
if input.range(of:" ") != nil {
    let array = input.components(separatedBy: " ")
    let operation = readLine(strippingNewline:true)!
    if operation == "count" {
        print(array.count)
    } else if operation == "avg" {
        var total = 0.0
        for index in array {
            total += Double(index)!
        }
        print(total/Double(array.count))
    }
} else {
    let firstNum = UInt.init(input)!
    let operation = readLine(strippingNewline:true)!
    
    if operation == "fact" {
        var result = 1
        for n in (1...firstNum).reversed() {
            result *= Int(n)
        }
        print(result)
    } else {
        let input3 = readLine(strippingNewline:true)!
        let secondNum = UInt.init(input3)!
        
        let expression = "\(firstNum)\(operation)\(secondNum)"
        let castExp = NSExpression(format: expression)
        let result = castExp.expressionValue(with: nil, context: nil) as! NSNumber
        print("Result: \(result)")
    }
}



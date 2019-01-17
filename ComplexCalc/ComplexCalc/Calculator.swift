//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ nums: [Int]) -> Int {
        var sum = 0
        for x in nums {
            sum += x
        }
        return sum
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ nums: [Int]) -> Int {
        var product = 1
        for x in nums {
            product *= x
        }
        return product
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func count(_ nums: [Int]) -> Int {
        return nums.count
    }
    
    func avg(_ nums: [Int]) -> Int {
        return add(nums) / nums.count
    }
    
    
}

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
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        assert(beg >= 0 && beg < args.count)
        var lhs = 0
        if beg > 0 {
            lhs = args[beg - 1]
        }
        for i in beg...(args.count - 1) {
            lhs = op(lhs, args[i])
        }
        
        return lhs
        
    }
    
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
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var result = lhs
        for (key, value) in rhs {
            var leftValue = 0
            if let tmp = result[key] {
                leftValue = tmp
            }
            result[key] = leftValue + value
        }
        return result
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }

    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var result = lhs
        for (key, value) in rhs {
            var leftValue = 0
            if let tmp = result[key] {
                leftValue = tmp
            }
            result[key] = leftValue - value
        }
        return result
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

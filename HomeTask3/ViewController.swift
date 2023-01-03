//
//  ViewController.swift
//  HomeTask3
//
//  Created by Milana Antonova on 3.01.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\nQuotient of 2 and 3 is \(quotient(2, 3))")
        print("Sum of digits of 5234 is \(sumOfDigits(5234))")
        print("Is авб greater than ввщ? \(isGreater("авб", than: "ввщ"))")
//        someFunc()
        print("3 to the power of 2 is \(power(3))")
        print("3 to the power of 3 is \(power(3, degree: 3))")
        print("Factorial of 6 is \(factorial(6))")
    }

    //MARK: overloading of functions
    func sum(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
    
    func sum(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
    
    func sum(_ firstNumber: Int, _ secondNumber: Double) -> Double {
        return Double(firstNumber) + secondNumber
    }
    
    func sum(_ firstNumber: Double, _ secondNumber: Int) -> Double {
        return firstNumber + Double(secondNumber)
    }
    
    func difference(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
    
    func difference(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
    
    func difference(_ firstNumber: Int, _ secondNumber: Double) -> Double {
        return Double(firstNumber) - secondNumber
    }
    
    func difference(_ firstNumber: Double, _ secondNumber: Int) -> Double {
        return firstNumber - Double(secondNumber)
    }
    
    func product(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
    
    func product(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
    
    func product(_ firstNumber: Int, _ secondNumber: Double) -> Double {
        return Double(firstNumber) * secondNumber
    }
    
    func product(_ firstNumber: Double, _ secondNumber: Int) -> Double {
        return firstNumber * Double(secondNumber)
    }

    func quotient(_ firstNumber: Int, _ secondNumber: Int) -> Double {
        return Double(firstNumber) / Double(secondNumber)
    }
    
    func quotient(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
    
    func quotient(_ firstNumber: Int, _ secondNumber: Double) -> Double {
        return Double(firstNumber) / secondNumber
    }
    
    func quotient(_ firstNumber: Double, _ secondNumber: Int) -> Double {
        return firstNumber / Double(secondNumber)
    }
    
    //MARK: sum of digits
    func sumOfDigits(_ number: Int) -> Int {
        var sum = 0
        var num = number
        var digit = num % 10
        repeat {
            sum += digit
            num /= 10
            digit = num % 10
        } while num != 0
        return sum
    }
    
    //MARK: compare strings
    func isGreater(_ firstString: String, than secondString: String) -> Bool {
        if firstString > secondString {
            return true
        }
        return false
    }
    
    //MARK: cycle call of function
    func someFunc() {
        print("Do something")
        someFunc()
    }
    
    //MARK: power of number
    func power(_ number: Double, degree: Double = 2) -> Double {
        return pow(number, Double(degree))
    }
    
    //MARK: factorial
    func factorial(_ number: Int) -> Int {
        var num = number
        var factorial = num
        num -= 1
        repeat {
            factorial *= num
            num -= 1
        } while num != 1
        return factorial
    }
    
}


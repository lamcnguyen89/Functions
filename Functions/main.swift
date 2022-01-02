//
//  main.swift
//  Functions
//
//  Created by M_2022814 on 12/11/21.
//

import Foundation

// Functions are self-contained chunks of code that perform a specific task

// MARK: - Defining and Calling Functions

func greet(person : String) -> String {
    let greeting = "Hello" + person + "!"
    return greeting
}
// func is the keyword to start a function
// greet is the name of the function
// person is the name of a variable parameter that code outside of the scope of a function can change
// String after the colon after person is the data type of the parameter required by the function
// String after the arrow defines the data type that the function is required to return


// MARK: - Functions with multiple parameters
// Functions can have multiple parameters

func multiParameterFunction(param1 : String, param2 : Int) {
    print("The darkness of \(param1) is \(param2) miles wide")
}

// MARK: - Functions with multiple return values

func minMax(min: Int, max: Int) -> (min : Int, max : Int) {
    
    var currentMin = min
    var currentMax = max
    
    return (currentMin, currentMax)
}

// MARK: - Omitting Argument Labels
// If you don't want argument label name required, use an underscore_

func iLikeCats(_ param1 : Int, _ param2 : String) {
    print("\(param1) and \(param2)")
}
iLikeCats(1, "Dopey")

// MARK: - Variadic Parameters
// A variadic parameter accepts zero or more values of a specified type.
// You use a a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called.
// Write three period characters after the parameter's type name

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)

// MARK: - In-Out Parameters
// Use in-out parameters to change the value of a function parameter from within the body of a function

func inOutExample(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
} // This function swaps the values of a and b

var a = 100
var b = 51
inOutExample(&a, &b)
print("The value of a is now \(a) and the value of b is now \(b)")

/*
func swapValuesWithoutInOut (_ a : Int, _ b : Int) {
    let tempA = a
    b = tempA
    a = b
    
}
 // The above function doesn't work because a and b input parameters are treated as a constant
 */


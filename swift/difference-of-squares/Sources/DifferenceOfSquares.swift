//Difference Of Squares
//Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
//
//The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
//
//The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
//
//Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.

import Foundation

/// Power operator
precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence

func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

class Squares {
    
    var range: CountableClosedRange<Int>
    
    var squareOfSums: Int {
        return range.reduce(0, +) ^^ 2
    }
    
    var sumOfSquares: Int {
        return range.map({$0^^2}).reduce(0, +)
    }
    
    var differenceOfSquares: Int {
        return squareOfSums - sumOfSquares
    }
    
    init(_ value: Int) {
        self.range = 1...value
    }
}

//Solution goes in Sources

import Foundation

struct Squares {
    let number: Int
    var squareOfSum: Int {
        get {
            var result = 0
            for n in 1...number {
                result += n
            }
            return Int(result*result)
        }
    }
    var sumOfSquares: Int  {
        get {
            var result = 0
            for n in 1...number {
                result += Int(n*n)
            }
            return result
        }
    }
    var differenceOfSquares: Int  {
        get {
            return squareOfSum - sumOfSquares
        }
    }
    init(_ n: Int) {
        number = n
    }
}

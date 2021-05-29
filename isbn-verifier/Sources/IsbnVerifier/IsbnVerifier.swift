//Solution goes in Sources

import Foundation

func isValid(_ input: String) -> Bool {
    var isbn = input
    isbn.removeAll { !($0.isWholeNumber || $0 == "X") }

    let regex = try! NSRegularExpression(pattern: "^\\d{9}[\\dX]$")
    let range = NSRange(location: 0, length: isbn.count)
    guard 1 == regex.numberOfMatches(in: isbn, range: range)
          else {return false}

    var digits = isbn.prefix(9).compactMap { $0.wholeNumberValue! }
    digits.append(isbn.last!.wholeNumberValue ?? 10)

    let isbnSum = digits
        .enumerated()
        .map {(i, d) in d * (10 - i)}
        .reduce(0, +)
    return isbnSum % 11 == 0
}

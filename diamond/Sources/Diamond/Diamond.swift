//Solution goes in Sources

func makeDiamond(letter: Character) -> [String] {
    let alphabet = (0..<26).map({Character(UnicodeScalar("A".unicodeScalars.first!.value + $0)!)})
    let padding: Int = alphabet.index(of: letter)!
    var diamond = [String]()
    
    for (idx, char) in alphabet.enumerated() {
        var str = String(repeating: " ", count: padding - idx) + String(char)
        if idx == 0 {
            str += str.dropLast().reversed()
        } else {
            str += String(repeating: " ", count: (2 * idx) - 1) + str.reversed()
        }
        diamond.append(str)
        if char == letter { break }
    }
    
    if diamond.count > 1 {
        diamond += diamond.dropLast().reversed()
    }

    return diamond
}

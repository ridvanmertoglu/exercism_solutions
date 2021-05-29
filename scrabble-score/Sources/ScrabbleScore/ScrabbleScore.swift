//Solution goes in Sources


struct Scrabble {
    private let word: String
    var score: Int {
        return word.characters.map{$0.score}.reduce(0, +)
    }
    
    init(_ word: String?) {
        self.word = word?.uppercased() ?? ""
    }
    static func score(_ word: String?) -> Int {
        return Scrabble(word).score
    }
}

extension Character {
    var score: Int {
        switch self {
        case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
            return 1
        case "D", "G":
            return 2
        case "B", "C", "M", "P":
            return 3
        case "F", "H", "V", "W", "Y":
            return 4
        case "K":
            return 5
        case "J", "X":
            return 8
        case "Q", "Z":
            return 10
        default:
            return 0
        }
    }
}

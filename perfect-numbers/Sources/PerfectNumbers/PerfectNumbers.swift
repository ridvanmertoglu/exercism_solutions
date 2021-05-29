//Solution goes in Sources

struct NumberClassifier {
    enum Class {
        case perfect
        case abundant
        case deficient
    }

    var classification: Class

    init(number: Int) {
        let sum = (1..<number).filter{ number % $0 == 0 }.reduce(0){ $0 + $1 }
        switch sum {
            case number: self.classification = .perfect
            case ..<number: self.classification = .deficient
            default: self.classification = .abundant
        }
    }
}

//Solution goes in Sources

enum ListRelation {
    case equal
    case unequal
    case sublist
    case superlist
}

func classifier(listOne: [Int], listTwo: [Int]) -> ListRelation {
    if listOne == listTwo {
        return .equal
    }
    if listTwo.contains(other: listOne) {
        return .sublist
    } else if listOne.contains(other: listTwo) {
        return .superlist
    }
    return .unequal
}

extension Array where Element: Equatable {
    func contains(other: Array) -> Bool {
        if other.isEmpty {
            return true
        }

        var head = 0
        while true {
            guard (self.count - head) >= other.count else {
                return false
            }

            let slice = self[head...(head + other.count - 1)]

            if Array(slice) == other {
                return true
            } else {
                head += 1
            }
        }
    }
}

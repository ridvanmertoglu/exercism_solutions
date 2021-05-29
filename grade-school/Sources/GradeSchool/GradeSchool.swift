//Solution goes in Sources

public struct GradeSchool {
    public private(set) var roster: [Int: [String]] = [:]

    public var sortedRoster: [Int: [String]] {
        // Dictionaries are inherently unsorted in Swift.
        // The exercise really should expect a list of key-value pairs instead of
        // trying to sort the keys of the dictionary...
        return roster.mapValues { $0.sorted() }
    }

    public mutating func addStudent(_ name: String, grade: Int) {
        roster[grade, default: []].append(name)
    }

    public func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}

//Solution goes in Sources

struct ETL {
    static func transform(_ dict: [Int: [String]]) -> [String: Int] {
        let transformed = dict.flatMap { key, value in
            return value.flatMap { [$0.lowercased(): key] }
        }

        return Dictionary(uniqueKeysWithValues: transformed)
    }
}

//Solution goes in Sources

struct Raindrops {
    var number: Int

    var sounds: String {
        let translate = [3: "Pling", 5: "Plang", 7: "Plong"]

        let result = Array(translate.keys).sorted().reduce("") { accumulator, element in
            if number % element == 0 {
                return accumulator + "\(translate[element]!)"
            } else {
                return accumulator
            }
        }

        return result.isEmpty ? "\(number)" : result
    }

    init(_ number: Int) {
        self.number = number
    }
}

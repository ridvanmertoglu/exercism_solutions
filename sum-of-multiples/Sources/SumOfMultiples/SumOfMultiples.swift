//Solution goes in Sources

class SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples arr: [Int]) -> Int {
        if limit <= 0 {
            return 0
        }
        var sum: Int = 0
        for num in 1..<limit {

            for item in arr {
                if item != 0 && num % item == 0 {
                    sum += num
                    print(sum)
                    break
                }
            }
        }
        return sum
    }
}

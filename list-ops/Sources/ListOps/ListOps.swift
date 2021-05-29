//Solution goes in Sources

struct ListOps {
    static func append<T>(_ array1: [T], _ array2: [T]) -> [T] {
        var appended = array1
        for el in array2 {
            appended.append(el)
        }
        return appended
    }
    
    static func concat<T>(_ arrays: [T]...) -> [T] {
        var concatenated = [T]()
        for array in arrays {
            concatenated = append(concatenated, array)
        }
        return concatenated
    }
    
    static func filter<T>(_ array: [T], isIncluded: ((T) -> Bool)) -> [T] {
        var filteredArray = [T]()
        for el in array {
            if isIncluded(el) == true {
                filteredArray.append(el)
            }
        }
        return filteredArray
    }
    
    static func length<T>(_ array: [T]) -> Int {
        var count = 0
        for _ in array {
            count += 1
        }
        return count
    }
    
    static func map<T>(_ array: [T], transform: ((T) -> T)) -> [T] {
        var mappedArray = [T]()
        mappedArray.reserveCapacity(length(array))
        for el in array {
            mappedArray.append(transform(el))
        }
        return mappedArray
    }
    
    static func foldLeft<T>(_ array: [T], accumulated: T, combine: ((T, T) -> T)) -> T {
        var accumulated = accumulated
        for el in array {
            accumulated = combine(accumulated, el)
        }
        return accumulated
    }
    
    static func foldRight<T>(_ array: [T], accumulated: T, combine: ((T, T) -> T)) -> T {
        var accumulated = accumulated
        for el in reverse(array) {
            accumulated = combine(el, accumulated)
        }
        return accumulated
    }

    static func reverse<T>(_ array: [T]) -> [T] {
        var reversed = [T]()
        reversed.reserveCapacity(length(array))
        var idx = length(array) - 1
        while idx >= 0 {
            reversed.append(array[idx])
            idx -= 1
        }
        return reversed
    }
}

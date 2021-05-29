//Solution goes in Sources

enum InputError: Error {
    case InvalidRange
}

func steps(_ input: Int) throws -> Int {

    guard input > 0 else {
        throw InputError.InvalidRange
    }
    
    var step = 0
    var n = input
    
    while n != 1 {
        if n%2 == 0 {
            n = n/2
        } else {
            n = 3*n+1
        }
        print(n)
        step += 1
    }

    return step
}

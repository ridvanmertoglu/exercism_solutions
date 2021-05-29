//Solution goes in Sources

func flattenArray<T>(_ a:[Any?]) -> [T] {
    var result = [T]()
    for i in a {
        
        // Note the order of the cases in the following switch statement.
        // [Any?] must be tested before T, because T can also be [Any?]
        switch i {
        case is [Any?]:
            result.append(contentsOf: flattenArray(i as! [Any?]))
        case is T:
            result.append(i as! T)
        default: // nil is T?
            continue
        }
    }
    return result
}

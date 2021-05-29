//Solution goes in Sources

extension Array {
    func accumulate<T>(_ operation: (Element) -> T) -> [T] {
        var collection = [T]()
        
        for element in self {
            collection.append(operation(element))
        }
        
        return collection
    }
}

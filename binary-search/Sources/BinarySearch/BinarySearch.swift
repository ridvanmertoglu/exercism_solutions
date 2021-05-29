//Solution goes in Sources

import Foundation

enum BinarySearchError: Error {
    case unsorted
}

class BinarySearch {
    let list: [Int]
    
    init(_ list: [Int]) throws {
        guard list.sorted() == list else {
            throw BinarySearchError.unsorted
        }
        self.list = list
    }
    
    var middle: Int {
        (list.count - 1) / 2
    }
    
    func searchFor(_ number: Int) -> Int? {
        var start = 0
        var listSize = list.count - 1
        
        while start <= listSize {
            let middle = start + (listSize - start) / 2
            
            if list[middle] == number {
                return middle

            } else if list[middle] < number {
                start = middle + 1
            
            } else {
                listSize = middle - 1
            }
        }
        
        return nil
    }
    
    
}

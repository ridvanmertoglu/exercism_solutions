//Solution goes in Sources

import Foundation

enum Plant : Character {
    case violets = "V"
    case radishes = "R"
    case clover = "C"
    case grass = "G"
}

struct Garden
{
    static let students = ["Alice", "Bob", "Charlie", "David",
                        "Eve", "Fred", "Ginny", "Harriet","Ileana", "Joseph", "Kincaid","Larry"]
    public var plantDic : [String : [Plant]]
    
    public func plantsForChild(_ student:String) -> [Plant]?
    {
        return plantDic[student]
    }

    init(_ diagram: String?, children: [String] = students ) {
        plantDic = [:]
        let sortedChildren = children.sorted()
        if diagram != nil {
            let assignment = diagram!.components(separatedBy:"\n")
            let firstrow = Array(assignment[0])
            let secondrow = Array(assignment[1])
            let numstudents = assignment[0].count / 2
            for ii in 0..<numstudents {
                plantDic[sortedChildren[ii]] = [ Plant(rawValue:firstrow[ii*2])!, Plant(rawValue:firstrow[ii*2+1])!,
                                Plant(rawValue:secondrow[ii*2])!, Plant(rawValue:secondrow[ii*2+1])! ]
            }
        }
    }
}

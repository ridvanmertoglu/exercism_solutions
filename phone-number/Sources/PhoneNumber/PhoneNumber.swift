//Solution goes in Sources

import Foundation

class PhoneNumber {
    var number : String
    var areaCode : String
    
    init (_ num: String) {
        // convert to array of strings seperated by non-numeric value, and then join the results to form a single strinf
        var numberTemp = num.components(separatedBy: CharacterSet.decimalDigits.inverted).joined(separator: "")
        
        if numberTemp.characters.count > 10 {
            let countryCode = numberTemp.remove(at: numberTemp.startIndex)
            
            if countryCode != "1" {
                numberTemp = "0000000000"
            }
        } else if numberTemp.characters.count < 10 {
            numberTemp = "0000000000"
        }
        
        number = numberTemp
        
        let indexTo = numberTemp.index(numberTemp.startIndex, offsetBy: 3)
        areaCode = numberTemp.substring(to: indexTo)
    }
}


extension PhoneNumber: CustomStringConvertible {
    var description: String {
        var fromIndex = self.number.index(self.number.startIndex, offsetBy: 3)
        let toIndex = self.number.index(fromIndex, offsetBy: 3)
        let prefix = self.number.substring(with: fromIndex..<toIndex)
        
        fromIndex = toIndex
        let line = self.number.substring(from: fromIndex)
        
        return "(\(self.areaCode)) \(prefix)-\(line)"
    }
}

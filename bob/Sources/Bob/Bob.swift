//Solution goes in Sources

import Foundation

 
func hey(_ string: String) -> String {

    if string.trimmingCharacters(in: .whitespaces).isEmpty{
       return "Fine. Be that way!"
    }
    else if string == string.uppercased() && (string.last == "!" || (string.rangeOfCharacter(from: CharacterSet.decimalDigits) == nil)){
        return "Whoa, chill out!"
    }

    else if string.last == "?" {
         return "Sure."
     }
    else {
        return "Whatever."
    }
}


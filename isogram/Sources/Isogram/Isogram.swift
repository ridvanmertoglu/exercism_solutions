//Solution goes in Sources

import Foundation

func isIsogram(_ input:String) -> Bool {
    
    let chars = input.characters
    var seen: [Character] = []
    
    for c in chars {
        let lc = String(c).lowercased().characters.first!
        if CharacterSet.letters.contains(UnicodeScalar(String(lc))!) {
            if seen.contains(where: {$0 == lc}) {
                return false
            }
            seen.append(lc)
        }
    }
    
    return true
}


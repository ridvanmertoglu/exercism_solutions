//Solution goes in Sources

import Foundation

struct Robot {
    private static var availableCharacters: [Character] = {
        var characters = [Character]()
        for characterCode in Character("A").asciiValue!...Character("Z").asciiValue! {
            let character = Character(UnicodeScalar(characterCode))
            characters.append(character)
        }
        
        return characters
    }()
    
    private static var usedNames: Set<String> = Set()
    var name = ""
    
    init() {
        self.name = Robot.generateRandomName()
    }
    
    private static func generateRandomName() -> String {
        var name = ""
        repeat {
            let characterPart = String(availableCharacters.shuffled().first!) + String(availableCharacters.shuffled().first!)
            let digitPart = Int.random(in: 0...999)
            
            name = characterPart + String(format: "%3d", digitPart)
        } while (Robot.usedNames.contains(name))
        
        Robot.usedNames.insert(name)
        return name
    }
    
    mutating func resetName() {
        self.name = Robot.generateRandomName()
    }
}

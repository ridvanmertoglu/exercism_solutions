//Solution goes in Sources

enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}

class Nucleotide {
    var dna: String
    var rna: String
    
    func complementOfDNA() throws -> String {
        for letter in dna {
            switch letter {
            case "G": self.rna += "C"
            case "C": self.rna += "G"
            case "T": self.rna += "A"
            case "A": self.rna += "U"
            default: throw TranscriptionError.invalidNucleotide(message: "\(letter) is not a valid Nucleotide")
            }
        }
        
        return self.rna
    }
    
    init(_ dna: String) {
        self.dna = dna.uppercased()
        self.rna = ""
    }
}

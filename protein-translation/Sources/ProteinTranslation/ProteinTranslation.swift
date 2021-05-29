//Solution goes in Sources

func translationOfCodon(_ codon: String) throws -> String {
    return try Protein(codon: codon).rawValue
}

func translationOfRNA(_ rna: String) throws -> [String] {
    var result: [Protein] = []
    for codon in rna.split(size: 3) {
        let protein = try Protein(codon: codon)
        guard protein != .STOP else {
            break
        }
        result.append(protein)
    }
    return result.map { $0.rawValue }
}

enum Protein: String {

    case Methionine
    case Phenylalanine
    case Leucine
    case Serine
    case Tyrosine
    case Cysteine
    case Tryptophan
    case STOP

    init(codon: String) throws {
        switch codon {
        case "AUG":
            self = .Methionine
        case "UUU", "UUC":
            self = .Phenylalanine
        case "UUA", "UUG":
            self = .Leucine
        case "UCU", "UCC", "UCA", "UCG":
            self = .Serine
        case "UAU", "UAC":
            self = .Tyrosine
        case "UGU", "UGC":
            self = .Cysteine
        case "UGG":
            self = .Tryptophan
        case "UAA", "UAG", "UGA":
            self = .STOP
        default:
            throw TranslationError.invalidCodon
        }
    }

}

enum TranslationError: Error {
    case invalidCodon
}

extension String {

    func split(size: Int) -> [String] {
        return stride(from: 0, to: count, by: size).map { i -> String in
            let startIndex = index(self.startIndex, offsetBy: i)
            let endIndex = index(startIndex, offsetBy: size, limitedBy: self.endIndex) ?? self.endIndex
            return String(self[startIndex..<endIndex])
        }
    }

}

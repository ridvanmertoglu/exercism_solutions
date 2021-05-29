//Solution goes in Sources

enum TriangleKind: String {
    case Equilateral = "Equilateral"
    case Isosceles = "Isosceles"
    case Scalene = "Scalene"
    case ErrorKind = "ErrorKind"
}

struct Triangle {

    var kind: String
    
    init(_ a: Double, _ b: Double, _ c: Double) {
        if max(a, b, c) >= (a + b + c) - max(a, b, c) {
            self.kind = TriangleKind.ErrorKind.rawValue
        } else if a == b && b == c {
            self.kind = TriangleKind.Equilateral.rawValue
        } else if a == b || b == c || c == a {
            self.kind = TriangleKind.Isosceles.rawValue
        } else {
            self.kind = TriangleKind.Scalene.rawValue
        }
    }
}

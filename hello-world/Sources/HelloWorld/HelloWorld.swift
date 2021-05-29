//Solution goes in Sources


func hello(name: String? = nil) -> String {
        if name != nil {
            return "Hello, " + name! + "!"
        } else {
            return "Hello, World!"
        }
}






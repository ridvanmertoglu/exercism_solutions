//Solution goes in Sources


struct CircularBuffer<Value> {
    
    private let capacity: Int
    private var data: [Value] = []
    
    private var canBeWritten: Bool {
        return data.count < capacity
    }
    
    private var canBeRead: Bool {
        return !data.isEmpty
    }
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    mutating func write(_ value: Value) throws {
        guard canBeWritten else {
            throw CircularBufferError.bufferFull
        }
        data.append(value)
    }
    
    mutating func read() throws -> Value {
        guard canBeRead else {
            throw CircularBufferError.bufferEmpty
        }
        return data.removeFirst()
    }
    
    mutating func overwrite(_ value: Value) {
        if !canBeWritten {
            _ = try? read()
        }
        try? write(value)
    }
    
    mutating func clear() {
        data = []
    }
}

enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

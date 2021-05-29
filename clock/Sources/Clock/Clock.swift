//Solution goes in Sources

import Foundation

struct Clock : Equatable, CustomStringConvertible {
    private var _minutes: Int
    private let minutesPerDay = 24 * 60
    
    init(minutes: Int) {
        _minutes = minutes % minutesPerDay
        if _minutes < 0 {
            _minutes += minutesPerDay
        }
    }
    
    init(hours: Int, minutes: Int = 0) {
        self.init(minutes: hours * 60 + minutes)
    }
    
    func add(minutes: Int) -> Clock {
        return Clock(minutes: _minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        return Clock(minutes: _minutes - minutes)
    }
    
    var description: String {
        let hours = _minutes / 60
        let minutes = _minutes % 60
        return String(format: "%02d:%02d", hours, minutes)
    }

    static func == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs._minutes == rhs._minutes
    }
}

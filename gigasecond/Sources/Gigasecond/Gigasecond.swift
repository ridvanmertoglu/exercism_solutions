//Solution goes in Sources

import Foundation


class Gigasecond {

    var dateFormatter: DateFormatter {
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(identifier: "UTC")
        return formatter
    }

    var strDate: String

    var description: String? {
        if let date = dateFormatter.date(from: strDate) {
            let gigasecondDate = date + TimeInterval(1_000_000_000)
            let resultStr = dateFormatter.string(from: gigasecondDate)
            return resultStr
        }
        return nil
    }

    init?(from strDate: String) {
        self.strDate = strDate
    }
}

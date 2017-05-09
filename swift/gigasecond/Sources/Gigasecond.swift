//Calculate the moment when someone has lived for 109 seconds.
//
//A gigasecond is 109 (1,000,000,000) seconds.

// Input - "2011-04-25T00:00:00"

import Foundation

/// Power operator
precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence

func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

/// String date
extension String {
    func toDate(format: String = "yyyy-MM-dd'T'HH:mm:ss")-> Date {
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = format
        dateFormat.timeZone = TimeZone(secondsFromGMT: 0)
        
        // Return date
        return dateFormat.date(from: self) ?? Date()
    }
}

/// Date string
extension Date {
    func toString(format: String = "yyyy-MM-dd'T'HH:mm:ss")-> String {
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = format
        dateFormat.timeZone = TimeZone(secondsFromGMT: 0)
        
        // Return string
        return dateFormat.string(from: self) 
    }
}

/// Const
let gigasecond = 10^^9

func Gigasecond(from: String)-> String? {
    
    /// String to date
    let dateTest = from.toDate()
    
    /// Adding gigasec
    let calendar = Calendar.current

    /// Use calendar for timeSaving and all that stuff
    let result = calendar.date(byAdding: .second, value: gigasecond, to: dateTest) ?? Date()
    
    /// Return result strnig
    return result.toString()
}

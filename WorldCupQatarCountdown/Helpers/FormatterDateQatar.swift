//
//  FormatterDateQatar.swift
//  Marcelo.WorldCupQatar22
//
//  Created by Alexandre Cardoso on 20/10/22.
//

import Foundation

struct FormatterDateQatar {
    
    static func convertGameDate(
        month: Int,
        day: Int,
        hour: Int,
        minute: Int = 0,
        timeZone: TimeZone = .current,
        locale: Locale = .current
    ) -> (date: String, time: String, dateTime: DataTimeMatch)? {
        
        guard let gameDateQatar = DateComponents(
            calendar: Calendar.current,
            timeZone: TimeZone(identifier: "Asia/Qatar"),
            year: 2022,
            month: month,
            day: day,
            hour: hour,
            minute: minute
        ).date else { return nil}

        let dateFormatted = createDateFormatter(
            dateFormat: "E, yyyy-MM-dd",
            timeZone: timeZone,
            locale: locale
        ).string(from: gameDateQatar)
        
        let timeFormatted = createDateFormatter(
            dateFormat: "HH:mm:ssZ",
            timeZone: timeZone,
            locale: locale
        ).string(from: gameDateQatar)
        
        let dateTime = createDataTimeMatch(stringDate: dateFormatted, stringTime: timeFormatted)
        
        return (dateFormatted, timeFormatted, dateTime)
    }
    
    static private func createDateFormatter(dateFormat: String, timeZone: TimeZone, locale: Locale) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = dateFormat
        dateFormatter.locale = locale

        return dateFormatter
    }

    static private func createDataTimeMatch(stringDate: String, stringTime: String) -> DataTimeMatch {
        let splitWeekDate = stringDate.split(separator: ",")
        let yearMonthDay = splitWeekDate[1].replacingOccurrences(of: " ", with: "").split(separator: "-")
        let splitTime = stringTime.split(separator: ":")
        return DataTimeMatch(
            month: Int(yearMonthDay[1]) ?? 0,
            day: Int(yearMonthDay[2]) ?? 0,
            hour: Int(splitTime[0]) ?? 0
        )
    }

    static func formatterDateMatch(_ stringDate: String) -> String {
        let splitWeekDate = stringDate.split(separator: ",")
        let dayWeek = splitWeekDate[0].replacingOccurrences(of: ".", with: "").uppercased()
        let splitDate = splitWeekDate[1].replacingOccurrences(of: " ", with: "").split(separator: "-")
        let dateMath = "\(splitDate[2])/\(splitDate[1])"
        
        return "\(dayWeek) \(dateMath)"
    }
    
    static func formatterTimeMatch(_ stringTime: String) -> String {
        let split = stringTime.split(separator: ":")
        return "\(split[0])H00"
    }
    
}

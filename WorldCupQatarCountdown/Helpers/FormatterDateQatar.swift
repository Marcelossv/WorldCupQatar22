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
        timeZone: TimeZone = .current,
        locale: Locale = .current
    ) -> (date: String, time: String)? {
        
        guard let gameDateQatar = DateComponents(
            calendar: Calendar.current,
            timeZone: TimeZone(identifier: "Asia/Qatar"),
            year: 2022,
            month: month,
            day: day,
            hour: hour
        ).date else { return nil}
        
        let gameDateFormatter = DateFormatter()
        gameDateFormatter.timeZone = timeZone
        gameDateFormatter.dateFormat = "E, yyyy-MM-dd"
        gameDateFormatter.locale = locale
        
        let gameTimeFormatter = DateFormatter()
        gameTimeFormatter.timeZone = timeZone
        gameTimeFormatter.dateFormat = "HH:mm:ssZ"
        gameTimeFormatter.locale = locale
        
        let dateFormatter = gameDateFormatter.string(from: gameDateQatar)
        let timeFormatter = gameTimeFormatter.string(from: gameDateQatar)
        
        return (dateFormatter, timeFormatter)
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

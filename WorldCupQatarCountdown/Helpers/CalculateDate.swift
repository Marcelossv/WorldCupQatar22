//
//  CalculateDate.swift
//  WorldCupQatarCountdown
//
//  Created by Alexandre Cardoso on 06/11/22.
//

import Foundation

struct CalculateDate {
    
    private let month: Int
    private let day: Int
    private let hour: Int
    
    private var qatarMatchDate: Date {
        let dateComponents = DateComponents(
            calendar: Calendar.current,
            timeZone: TimeZone(identifier: "Asia/Qatar"),
            year: 2022,
            month: month,
            day: day,
            hour: hour,
            minute: 00
        )

        if let date = Calendar.current.date(from: dateComponents) {
            return date
        } else {
            return Date()
        }
    }

    private var currentDate: Date {
        Date.now
    }
    
    init(month: Int, day: Int, hour: Int) {
        self.month = month
        self.day = day
        self.hour = hour
    }

    func calculateDateDifference() -> DateComponents? {
        //        let dateDifference = Calendar.current.dateComponents(
        //            [.day, .hour, .minute, .second],
        //            from: currentDate,
        //            to: qatarMatchDate
        //        )
        
        if currentDate >= qatarMatchDate {
            return nil
        } else {
            //            return dateDifference
            return Calendar.current.dateComponents(
                [.day, .hour, .minute, .second],
                from: currentDate,
                to: qatarMatchDate
            )
        }
    }
    
}

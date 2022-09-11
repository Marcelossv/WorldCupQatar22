//
//  ViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 08/05/22.
//

import UIKit

final class CountDown: UIViewController {

    @IBOutlet var timerLabel: UILabel!

    private var timer: Timer?
    private var qatarEventDate: Date {
        let dateComponents = DateComponents(
            calendar: Calendar.current,
            timeZone: TimeZone(identifier: "Asia/Qatar"),
            year: 2022,
            month: 11,
            day: 21,
            hour: 13,
            minute: 00,
            second: 00
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

    override func viewDidLoad() {
        super.viewDidLoad()
        startScheduledTimer()
    }

    private func startScheduledTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [weak self] _ in
            guard let `self` = self else { return }
            self.updateTimerLabel(dateDifference: self.calculateDateDifference())
        }
    }

    private func calculateDateDifference() -> DateComponents {
        return Calendar.current.dateComponents(
            [.day, .hour, .minute, .second],
            from: self.currentDate,
            to: self.qatarEventDate
        )
    }

    private func updateTimerLabel(dateDifference: DateComponents) {
        if self.currentDate >= self.qatarEventDate {
            timerLabel.text = "Welcome to World Cup Qatar 2022!"
            timer?.invalidate()
        } else {
            let day = String(dateDifference.day ?? 00)
            let hour = String(dateDifference.hour ?? 00)
            let minute = String(dateDifference.minute ?? 00)
            let second = String(dateDifference.second ?? 00)
            let displayCount = "\(day)D   \(hour)H   \(minute)M   \(second)S "
            timerLabel.text = displayCount
        }
    }

}

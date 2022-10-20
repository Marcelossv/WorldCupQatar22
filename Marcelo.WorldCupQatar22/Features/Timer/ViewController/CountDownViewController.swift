//
//  CountDownViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 08/05/22.
//

import UIKit

final class CountDownViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var timerStackView: UIStackView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

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

                // 1) Create a DateFormatter() object.
                let format = DateFormatter()

                // 2) Set the current timezone to .current, or America/Chicago.
                format.timeZone = .init(identifier: "America/Chicago")

                // 3) Set the format of the altered date.
                format.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

                // 4) Set the current date, altered by timezone.
                let dateString = format.string(from: currentDate)
        print(dateString)
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
            timerStackView.isHidden = true
            timer?.invalidate()
        } else {
            dayLabel.text = String(dateDifference.day ?? 00)
            hourLabel.text = String(dateDifference.hour ?? 00)
            minuteLabel.text = String(dateDifference.minute ?? 00)
            secondLabel.text = String(dateDifference.second ?? 00)
        }
    }

}

//
//  CountDownViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 08/05/22.
//

import UIKit

final class CountDownViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var timerStackView: UIStackView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    // MARK: - private
    private var timer: Timer?
    private var calculateDate: CalculateDate?

    override func viewDidLoad() {
        super.viewDidLoad()
        startScheduledTimer()
    }

    private func startScheduledTimer() {
        calculateDate = CalculateDate(month: 11, day: 20, hour: 19)
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let `self` = self else { return }
            let calculate = self.calculateDate?.calculateDateDifference()
            self.updateTimerLabel(with: calculate)
        }
    }

    private func updateTimerLabel(with date: DateComponents?) {
        if let date = date {
            dayLabel.text = String(date.day ?? 00)
            hourLabel.text = String(date.hour ?? 00)
            minuteLabel.text = String(date.minute ?? 00)
            secondLabel.text = String(date.second ?? 00)
        } else {
            timerStackView.isHidden = true
            welcomeLabel.isHidden = false
            timer?.invalidate()
        }
    }

}

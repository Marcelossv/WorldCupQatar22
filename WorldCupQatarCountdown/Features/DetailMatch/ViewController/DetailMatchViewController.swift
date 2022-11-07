//
//  DetailMatchViewController.swift
//  WorldCupQatarCountdown
//
//  Created by Alexandre Cardoso on 01/11/22.
//

import UIKit

class DetailMatchViewController: UIViewController {
    
    // MARK: - Internal
    var detailMatch: DetailMatch?
    
    // MARK: - IBOutlet
    @IBOutlet private weak var groupLabel: UILabel!
    @IBOutlet private weak var homeFlagImageView: UIImageView!
    @IBOutlet private weak var visitFlagImageView: UIImageView!
    @IBOutlet private weak var homeCountryLabel: UILabel!
    @IBOutlet private weak var visitCountryLabel: UILabel!
    @IBOutlet private weak var matchLabel: UILabel!
    @IBOutlet private weak var nameStadiumLabel: UILabel!
    @IBOutlet private weak var capacityLabel: UILabel!
    @IBOutlet private weak var countdownStackView: UIStackView!
    @IBOutlet private weak var daysCountdownLabel: UILabel!
    @IBOutlet private weak var hourCountdownLabel: UILabel!
    @IBOutlet private weak var minuteCountdownLabel: UILabel!
    @IBOutlet private weak var secondCountdownLabel: UILabel!
    @IBOutlet private weak var gameCountdownLabel: UILabel!
    @IBOutlet private weak var saveDateSwitch: UISwitch!

    // MARK: - Private
    private var timer: Timer?
    private var calculateDate: CalculateDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        startScheduledTimer()
    }
    
    deinit {
        timer = nil
    }

    private func updateView() {
        if let detailMatch = detailMatch {
            groupLabel.text = "Group \(detailMatch.group)"
            homeFlagImageView.image = detailMatch.match.imageH
            visitFlagImageView.image = detailMatch.match.imageV
            homeCountryLabel.text = getNameCountry(detailMatch.match.homeName)
            visitCountryLabel.text = getNameCountry(detailMatch.match.visitName)
        }
    }
    
    private func getNameCountry(_ country: String) -> String {
        if let name = NameCountry(rawValue: country) {
            return name.description
        }
        return "-"
    }
    
    private func startScheduledTimer() {
        guard let dataTimeMatch = detailMatch?.match.dataTimeMatch else { return }
        calculateDate = CalculateDate(
            month: dataTimeMatch.month,
            day: dataTimeMatch.day,
            hour: dataTimeMatch.hour
        )

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let `self` = self else { return }
            let calculate = self.calculateDate?.calculateDateDifference()
            self.updateTimerLabel(with: calculate)
        }
    }
    
    private func updateTimerLabel(with date: DateComponents?) {
        if let date = date {
            daysCountdownLabel.text = String(date.day ?? 00)
            hourCountdownLabel.text = String(date.hour ?? 00)
            minuteCountdownLabel.text = String(date.minute ?? 00)
            secondCountdownLabel.text = String(date.second ?? 00)
        } else {
            countdownStackView.isHidden = true
            gameCountdownLabel.isHidden = false
            timer?.invalidate()
        }
    }
}

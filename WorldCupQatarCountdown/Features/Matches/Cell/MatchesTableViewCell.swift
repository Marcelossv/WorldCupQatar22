//
//  MatchTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 04/05/22.
//

import UIKit

final class MatchesTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleMatchLabel: UILabel!
    @IBOutlet private weak var homeNameTeam: UILabel!
    @IBOutlet private weak var visitNameTeam: UILabel!
    @IBOutlet private weak var dataTimeMatch: UILabel!
    @IBOutlet private weak var imageHome: UIImageView!
    @IBOutlet private weak var imageVisit: UIImageView!
    @IBOutlet weak var favoriteMatchView: UIView!
    
    static let identifier: String = "MatchesTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        self.dataTimeMatch.layer.cornerRadius = 10
    }

    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }

    func setupCell(matches: Match, color: UIColor) {
        self.titleMatchLabel.text = matches.titleMatch
        self.homeNameTeam.text = matches.homeName
        self.visitNameTeam.text = matches.visitName
        self.dataTimeMatch.text = setupDataTimeMatch(with: matches.dataTimeMatch)
        self.imageHome.image = matches.imageH
        self.imageVisit.image = matches.imageV
        self.favoriteMatchView.backgroundColor = color
    }
    
    private func setupDataTimeMatch(with dataTimeMatch: DataTimeMatch) -> String {
        guard let (gameDate, gameTime) = FormatterDateQatar.convertGameDate(
            month: dataTimeMatch.month,
            day: dataTimeMatch.day,
            hour: dataTimeMatch.hour
        ) else { return String() }
        
        let formatterDate = FormatterDateQatar.formatterDateMatch(gameDate)
        let formatterTime = FormatterDateQatar.formatterTimeMatch(gameTime)
        return "\(formatterDate) - \(formatterTime)"
    }

}

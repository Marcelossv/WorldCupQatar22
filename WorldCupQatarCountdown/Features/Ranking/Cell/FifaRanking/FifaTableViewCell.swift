//
//  FifaTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

final class FifaTableViewCell: UITableViewCell {

    @IBOutlet private weak var rankLabel: UILabel!
    @IBOutlet private weak var teamNameLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    
    static let identifier: String = "FifaTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    func setupCell(fifaRanking: FifaRanking) {
        self.rankLabel.text = String(fifaRanking.position)
        self.teamNameLabel.text = (fifaRanking.nameTeam)
        self.scoreLabel.text = String(fifaRanking.points)
    }
    
}

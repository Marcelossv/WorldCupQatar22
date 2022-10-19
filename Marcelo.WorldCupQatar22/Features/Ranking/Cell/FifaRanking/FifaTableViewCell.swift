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

    func setupCell(data: Datum) {
        self.rankLabel.text = String(data.rank)
        self.teamNameLabel.text = data.teamName
        self.scoreLabel.text = String(data.score)
    }
    
}

//
//  RankingTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 03/05/22.
//

import UIKit

final class RankingTableViewCell: UITableViewCell {

    @IBOutlet private weak var imageTeam: UIImageView!
    @IBOutlet private weak var numberMedalLabel: UILabel!
    
    static let identifier: String = "RankingTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    func setupCell(medal: Winner) {
        self.imageTeam.image = medal.image
        self.numberMedalLabel.text = medal.numberMedal
    }
 
}

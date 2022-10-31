//
//  TopGoalTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 06/05/22.
//

import UIKit

final class TopGoalTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var imagePlayer: UIImageView!
    @IBOutlet private weak var namePlayer: UILabel!
    @IBOutlet private weak var goalYearPlayer: UILabel!
    @IBOutlet private weak var infoGoalPlayer: UILabel!
    
    static let identifier: String = "TopGoalTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imagePlayer.layer.cornerRadius = imagePlayer.frame.size.height / 2
        imagePlayer.layer.borderWidth = 0.5
        imagePlayer.layer.borderColor = UIColor.systemGray.cgColor
    }
    
    override func prepareForReuse() {
        self.imagePlayer.image = nil
        self.namePlayer.text = nil
        self.goalYearPlayer.text = nil
        self.infoGoalPlayer.text = nil
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    func setupCell(topGoal: Goals) {
        self.imagePlayer.image = topGoal.image
        self.namePlayer.text = topGoal.namePlayer
        self.goalYearPlayer.text = topGoal.yearCup
        self.infoGoalPlayer.text = topGoal.gols
    }
    
}

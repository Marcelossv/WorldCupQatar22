//
//  TopGoalTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 06/05/22.
//

import UIKit

final class TopGoalTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var imagePlayer: UIImageView!
    @IBOutlet private weak var namePLayer: UILabel!
    @IBOutlet private weak var infoGoalPLayer: UILabel!
    
    static let identifier: String = "TopGoalTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.namePLayer.layer.cornerRadius = 25
        self.imagePlayer.layer.cornerRadius = imagePlayer.frame.size.height / 2
        self.imagePlayer.clipsToBounds = true
        self.imagePlayer.contentMode = .scaleAspectFit
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    func setupCell(topGoal: Goals) {
        self.imagePlayer.image = topGoal.image
        self.namePLayer.text = topGoal.namePlayer
        self.infoGoalPLayer.text = topGoal.gols
    }
    
}

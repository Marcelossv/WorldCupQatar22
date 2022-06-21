//
//  TopGoalTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 06/05/22.
//

import UIKit

class TopGoalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagePlayer: UIImageView!
    @IBOutlet weak var namePLayer: UILabel!
    @IBOutlet weak var infoGoalPLayer: UILabel!
    
    static let identifier: String = "TopGoalTableViewCell"
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.namePLayer.layer.cornerRadius = 25
        self.imagePlayer.layer.cornerRadius = imagePlayer.frame.size.height / 2
        self.imagePlayer.clipsToBounds = true
        self.imagePlayer.contentMode = .scaleAspectFit
    }

    public func setupCell(topGoal:TopGoal){
        self.imagePlayer.image = topGoal.image
        self.namePLayer.text = topGoal.namePlayer
        self.infoGoalPLayer.text = topGoal.gols
    }
    
}

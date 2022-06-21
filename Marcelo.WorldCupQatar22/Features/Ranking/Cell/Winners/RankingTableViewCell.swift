//
//  RankingTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 03/05/22.
//

import UIKit

class RankingTableViewCell: UITableViewCell {

    @IBOutlet weak var imageTeam: UIImageView!
    @IBOutlet weak var numberMedalLabel: UILabel!
    
    static let identifier: String = "RankingTableViewCell"
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setupCell(medal:Winners){
        self.imageTeam.image = medal.image
        self.numberMedalLabel.text = medal.numberMedal
    }
 
    
}

//
//  InfoTeamTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 11/05/22.
//

import UIKit

class InfoTeamTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageTeam: UIImageView!
    @IBOutlet weak var titleTeam: UILabel!
    @IBOutlet weak var textTeam: UILabel!
    
    static let identifier: String = "InfoTeamTableViewCell"
    
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupCell(infoTeams:InfoTeams){
        self.imageTeam.image = infoTeams.imageTeam
        self.titleTeam.text = infoTeams.nameTeam
        self.textTeam.text = infoTeams.labelTeam
    }

    
}

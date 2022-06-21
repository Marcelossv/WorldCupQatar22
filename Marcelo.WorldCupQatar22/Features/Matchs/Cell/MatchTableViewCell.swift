//
//  MatchTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 04/05/22.
//

import UIKit

class MatchTableViewCell: UITableViewCell {

    @IBOutlet weak var titleMatchLabel: UILabel!
    @IBOutlet weak var homeNameTeam: UILabel!
    @IBOutlet weak var visitNameTeam: UILabel!
    @IBOutlet weak var dataTimeMAtch: UILabel!
    @IBOutlet weak var vsLabel: UILabel!
    @IBOutlet weak var imageHome: UIImageView!
    @IBOutlet weak var imageVisit: UIImageView!
    
    static let identifier: String = "MatchTableViewCell"
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.dataTimeMAtch.layer.cornerRadius = 20
    }

    public func setupCell(matches:Matches){
        self.titleMatchLabel.text = matches.titleMatch
        self.homeNameTeam.text = matches.homeName
        self.visitNameTeam.text = matches.visitName
        self.dataTimeMAtch.text = matches.dataTimeMatch
        self.imageHome.image = matches.imageH
        self.imageVisit.image = matches.imageV
        self.vsLabel.text = matches.vs
        
    }
    
  
    
}

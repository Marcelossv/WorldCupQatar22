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
    @IBOutlet private weak var dataTimeMAtch: UILabel!
    @IBOutlet private weak var imageHome: UIImageView!
    @IBOutlet private weak var imageVisit: UIImageView!
    
    static let identifier: String = "MatchesTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        self.dataTimeMAtch.layer.cornerRadius = 10
    }

    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }

    func setupCell(matches: Match) {
        self.titleMatchLabel.text = matches.titleMatch
        self.homeNameTeam.text = matches.homeName
        self.visitNameTeam.text = matches.visitName
        self.dataTimeMAtch.text = matches.dataTimeMatch
        self.imageHome.image = matches.imageH
        self.imageVisit.image = matches.imageV
        
    }
    
}

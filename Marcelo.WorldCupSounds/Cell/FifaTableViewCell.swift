//
//  FifaTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

class FifaTableViewCell: UITableViewCell {

    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    static let identifier: String = "FifaTableViewCell"
    
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func setupCell(data:Datum){
        self.rankLabel.text = data.rank
        self.teamNameLabel.text = data.teamName
        self.scoreLabel.text = data.score
    }
    
}

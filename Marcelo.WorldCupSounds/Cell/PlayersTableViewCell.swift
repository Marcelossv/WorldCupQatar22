//
//  PlayersTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var agePlayer: UILabel!
    @IBOutlet weak var natPlayer: UILabel!
    @IBOutlet weak var valueMarket: UILabel!
    
    static let identifier: String = "PlayersTableViewCell"
    
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setupCell(player:Player){
        self.namePlayer.text = player.name
        self.agePlayer.text = player.age
        self.natPlayer.text = player.nation
        self.valueMarket.text = player.valueMarket
    }

    
}

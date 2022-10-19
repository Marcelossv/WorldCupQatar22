//
//  PlayersTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

final class PlayersTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var namePlayer: UILabel!
    @IBOutlet private weak var agePlayer: UILabel!
    @IBOutlet private weak var natPlayer: UILabel!
    @IBOutlet private weak var valueMarket: UILabel!
    
    static let identifier: String = "PlayersTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    func setupCell(player: Player) {
        self.imagePlayer.image = player.image
        self.namePlayer.text = player.name
        self.agePlayer.text = player.age
        self.natPlayer.text = player.nation
        self.valueMarket.text = player.valueMarket
    }

}

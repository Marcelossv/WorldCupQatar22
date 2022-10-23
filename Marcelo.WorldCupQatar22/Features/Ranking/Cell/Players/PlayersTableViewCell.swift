//
//  PlayersTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

final class PlayersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagePlayer: UIImageView!
    @IBOutlet private weak var namePlayer: UILabel!
    @IBOutlet private weak var agePlayer: UILabel!
    @IBOutlet private weak var natPlayer: UILabel!
    @IBOutlet private weak var valueMarket: UILabel!
    
    static let identifier: String = "PlayersTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imagePlayer.layer.cornerRadius = 15
        self.imagePlayer.layer.cornerRadius = imagePlayer.frame.size.height / 2
        self.imagePlayer.clipsToBounds = true
        self.imagePlayer.contentMode = .scaleAspectFill
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

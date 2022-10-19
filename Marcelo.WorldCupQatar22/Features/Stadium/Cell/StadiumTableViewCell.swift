//
//  StadiumTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

final class StadiumTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var imageStadium: UIImageView!
    @IBOutlet private weak var capacityLabel: UILabel!
    @IBOutlet private weak var cityLabel: UILabel!
    @IBOutlet private weak var matchesPlannedLabel: UILabel!
    @IBOutlet private weak var playImageView: UIImageView!
    
    static let identifier: String = "StadiumTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    func setupCell(_ stadium: ViewModel) {
        self.imageStadium.image = stadium.imageStadium
        self.capacityLabel.text = stadium.capacity
        self.cityLabel.text = stadium.city
        self.matchesPlannedLabel.text = stadium.matchesPlanned
    }

}

extension StadiumTableViewCell {

    struct ViewModel {
        let imageStadium: UIImage
        let capacity: String
        let city: String
        let matchesPlanned: String
    }

}

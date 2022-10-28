//
//  RankingTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 03/05/22.
//

import UIKit

final class RankingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var flagCountry: UIImageView!
    @IBOutlet weak var championStackView: UIStackView!
    @IBOutlet weak var championLabel: UILabel!
    @IBOutlet weak var twoTimeChampionStackView: UIStackView!
    @IBOutlet weak var twoTimeChampionLabel: UILabel!
    @IBOutlet weak var threeTimeChampionStackView: UIStackView!
    @IBOutlet weak var threeTimeChampionLabel: UILabel!
    @IBOutlet weak var fourTimeChampionStackView: UIStackView!
    @IBOutlet weak var fourTimeChampionLabel: UILabel!
    @IBOutlet weak var fiveTimeChampionStackView: UIStackView!
    @IBOutlet weak var fiveTimeChampionLabel: UILabel!
    
    static let identifier: String = "RankingTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        championStackView.isHidden = true
        twoTimeChampionStackView.isHidden = true
        threeTimeChampionStackView.isHidden = true
        fourTimeChampionStackView.isHidden = true
        fiveTimeChampionStackView.isHidden = true
    }
    
    override func prepareForReuse() {
        flagCountry.image = nil
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    func setupCell(medal: Winner) {
        self.flagCountry.image = medal.image
        setupChampion(with: medal.numberMedal)
    }
    
    private func setupChampion(with numberChampion: [String]) {
        for (index, cup) in numberChampion.enumerated() {
            switch index {
            case 0:
                championStackView.isHidden = false
                championLabel.text = cup
            case 1:
                twoTimeChampionStackView.isHidden = false
                twoTimeChampionLabel.text = cup
            case 2:
                threeTimeChampionStackView.isHidden = false
                threeTimeChampionLabel.text = cup
            case 3:
                fourTimeChampionStackView.isHidden = false
                fourTimeChampionLabel.text = cup
            case 4:
                fiveTimeChampionStackView.isHidden = false
                fiveTimeChampionLabel.text = cup
            default:
                break
            }
        }
    }
 
}

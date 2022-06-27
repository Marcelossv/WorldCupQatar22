//
//  StadiumTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

class StadiumTableViewCell: UITableViewCell {
  
    var linkYoutube: String?
    var vc: UIViewController?
    
    @IBOutlet weak var imageStadium: UIImageView!
    @IBOutlet weak var capacityLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var matchesPlannedLabel: UILabel!
    @IBOutlet weak var playImageView: UIImageView!
    
    static let identifier: String = "StadiumTableViewCell"
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setupCell(stadiumNames:Stadium){
        self.imageStadium.image = stadiumNames.imageStadium
        self.capacityLabel.text = stadiumNames.capacity
        self.cityLabel.text = stadiumNames.city
        self.matchesPlannedLabel.text = stadiumNames.matchesPlanned
    }
    
    public func setupCell2(linkYoutube: String, vc:UIViewController){
         self.vc = vc
         self.linkYoutube = linkYoutube
     }
    
    func showDetails() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController (withIdentifier: "ModalStadiumViewController") as? ModalStadiumViewController
        vc?.linkYoutube = ""
        self.vc?.present(vc ?? UIViewController(), animated: true, completion: nil)
    }
}

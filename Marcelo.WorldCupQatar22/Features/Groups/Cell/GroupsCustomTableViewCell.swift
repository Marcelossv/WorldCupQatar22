//
//  GroupsCustomTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

class GroupsCustomTableViewCell: UITableViewCell {
    
    var imageTeam: UIImage?
    var teamTitle: String?
    var teamText: String?
    var vc: UIViewController?
    
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var buttonInfo: UIButton!
    
    static let identifier: String = "GroupsCustomTableViewCell"
    static func getNib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func tappedInfo(_ sender: Any) {
        self.showDetails()
    }
        
   public func setupCell(imageTeam: UIImage, teamTitle: String, teamText: String, vc: UIViewController){
        self.vc = vc
        self.imageTeam = imageTeam
        self.teamTitle = teamTitle
        self.teamText = teamText
    }
    
    func showDetails() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController (withIdentifier: "InfoTeamViewController") as? InfoTeamViewController
        vc?.imageTeam = self.imageTeam
        vc?.teamTitle = self.teamTitle
        vc?.teamText = self.teamText
        self.vc?.present(vc ?? UIViewController(), animated: true, completion: nil)
    }
}


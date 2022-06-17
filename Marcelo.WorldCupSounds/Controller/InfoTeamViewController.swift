//
//  InfoTeamViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

class InfoTeamViewController: UIViewController {
    
    var imageTeam: UIImage?
    var teamTitle: String?
    var teamText: String?

    @IBOutlet weak var imageTeamImageView: UIImageView!
    @IBOutlet weak var titleTeamLabel: UILabel!
    @IBOutlet weak var textTeamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()

    }
    
    func setupUI() {
        self.imageTeamImageView.image = self.imageTeam
        self.titleTeamLabel.text = self.teamTitle
        self.textTeamLabel.text = self.teamText
    }
}

    
    


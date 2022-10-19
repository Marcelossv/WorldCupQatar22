//
//  InfoTeamViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 07/05/22.
//

import UIKit

final class TeamInfoViewController: UIViewController {

    @IBOutlet private weak var imageTeamImageView: UIImageView!
    @IBOutlet private weak var titleTeamLabel: UILabel!
    @IBOutlet private weak var textTeamLabel: UILabel!
    
    struct ViewModel {
        let name: String
        let image: UIImage
        let information: String
    }
    
    var informationViewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    private func setupUI() {
        if let viewModel = informationViewModel {
            self.imageTeamImageView.image = viewModel.image
            self.titleTeamLabel.text = viewModel.name
            self.textTeamLabel.text = viewModel.information
        }
    }
    
}

//
//  GroupsCustomTableViewCell.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 02/05/22.
//

import UIKit

final class GroupsTableViewCell: UITableViewCell {
        
    @IBOutlet private weak var imageProfile: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    static let identifier: String = "GroupsTableViewCell"
    
    struct ViewModel {
        let nameCountry: String
        let flag: UIImage
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
        
    func setupCell(_ viewModel: ViewModel) {
        imageProfile.image = viewModel.flag
        nameLabel.text = viewModel.nameCountry
    }
        
}

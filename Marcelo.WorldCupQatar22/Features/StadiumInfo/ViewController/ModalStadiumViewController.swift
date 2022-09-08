//
//  ModalStadiumViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 10/05/22.
//

import YouTubeiOSPlayerHelper
import UIKit

class ModalStadiumViewController: UIViewController {
    
    var linkYoutube: String = ""
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        playerView.load(withVideoId: linkYoutube)
    }
}

//
//  ModalStadiumViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 10/05/22.
//

import youtube_ios_player_helper
import UIKit

class ModalStadiumViewController: UIViewController {
    
    var linkYoutube: String?
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.load(withVideoId: "zuhA6cEHvfo")
    }
}

//
//  YTPlayerViewController.swift
//  Marcelo.WorldCupSounds
//
//  Created by Marcelo Silva on 10/05/22.
//

import UIKit
import YouTubeiOSPlayerHelper

final class YTPlayerViewController: UIViewController {
    
    @IBOutlet var playerView: YTPlayerView!
    
    var linkYoutube: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        playerLoad()
    }
    
    private func playerLoad() {
        if let link = linkYoutube {
            playerView.load(withVideoId: link)
        }
    }
}

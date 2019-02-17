//
//  ViewController.swift
//  myDesign+appDesignInStoryboard
//
//  Created by aa372953 on 2019/01/29.
//  Copyright © 2019 snymyn. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deviceImageView: UIImageView!
    @IBOutlet weak var playVisualEffectView: UIVisualEffectView!
    
    @IBAction func playButtonTapped(_ sender: Any) {
        let urlString = "https://www.youtube.com/watch?v=0MUV1BBbcjY"
        /*"https://play-er.vimeo.com/“external/235468301.hd.mp4?s=e852004d6a46ce569fcf6ef02a7d291ea581358e&profile_id=175"*/
        let url = URL(string: urlString)
        let player = AVPlayer(url: url!)
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.alpha = 0
        deviceImageView.alpha = 0
        playVisualEffectView.alpha = 0
        
        UIView.animate(withDuration: 1) {
            self.titleLabel.alpha = 1
            self.deviceImageView.alpha = 1
            self.playVisualEffectView.alpha = 1
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}


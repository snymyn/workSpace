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

    
    
    @IBOutlet weak var chapterCollectionView: UICollectionView!
    
   

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deviceImageView: UIImageView!
    @IBOutlet weak var playVisualEffectView: UIVisualEffectView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var heroView: UIView!
    @IBOutlet weak var bookView: UIView!
    
    
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
        
        scrollView.delegate = self
        
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

extension ViewController: UIScrollViewDelegate {
    //put scroll functionalities to view controller
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print(scrollView)
        let offsetY = scrollView.contentOffset.y
        if offsetY < 0 {
            heroView.transform = CGAffineTransform(translationX: 0, y: offsetY)
            playVisualEffectView.transform = CGAffineTransform(translationX: 0, y: -offsetY/3)
            titleLabel.transform = CGAffineTransform(translationX: 0, y: -offsetY/3)
            deviceImageView.transform = CGAffineTransform(translationX: 0, y: -offsetY/4)
            backgroundImageView.transform = CGAffineTransform(translationX: 0, y: -offsetY/5)
        }
    }
}

//
//  ViewController.swift
//  video_player
//
//  Created by Preet Deliwala on 30/06/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }

    private func playVideo(){
        
        guard let path = Bundle.main.path(forResource: "pexels-mart-production-7565438 (1080p)", ofType: "mp4") else {
            
            debugPrint("Video Not Found!!")
            
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }

}


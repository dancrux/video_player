//
//  ViewController.swift
//  video_player
//
//  Created by DANIEL on 27/07/2023.
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
        guard let path = Bundle.main.path(forResource: "THE+WEDDING+WEEKEND+(LATEST+MOVIE)+__+MOUNT+ZION+__+FLAMING+SWORD+latest+movie", ofType: "mp4") else{
            debugPrint("video not found")
            return
        }
        let player = AVPlayer(url:URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true)
//        player.play()
    }


}


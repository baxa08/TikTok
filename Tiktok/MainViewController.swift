//
//  MainViewController.swift
//  Tiktok
//
//  Created by Bakdaulet Zhaparov on 20.02.2023.
//

import AVFoundation
import AVKit

class MainViewController: UIViewController {
    
    var player: AVPlayer!
    var playerViewController: AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // URL of the video to play
        let urlString = "https://www.instagram.com/reel/CoiPrY7gtUz/?igshid=NzAzN2Q1NTE="
        guard let url = URL(string: urlString) else {
            // handle invalid URL
            return
        }

        if let components = URLComponents(url: url, resolvingAgainstBaseURL: true) {
            // get the query items from the URL
            let queryItems = components.queryItems
            
            // iterate over the query items and print the name and value of each item
            if let items = queryItems {
                for item in items {
                    print("\(item.name): \(item.value ?? "")")
                }
            }
        }
        
        // Initialize the AVPlayer and AVPlayerViewController
        player = AVPlayer(url: url)
        playerViewController = AVPlayerViewController()
        playerViewController.player = player
        
        // Add the playerViewController's view to your app's view hierarchy
        addChild(playerViewController)
        view.addSubview(playerViewController.view)
        playerViewController.view.frame = view.frame
        
        // Start playing the video
        player.play()
    }
}

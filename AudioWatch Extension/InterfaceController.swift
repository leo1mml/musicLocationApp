//
//  InterfaceController.swift
//  AudioWatch Extension
//
//  Created by Arthur Franco Junqueira Araujo de Castro on 04/09/17.
//  Copyright © 2017 BEPiD UCB. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation


class InterfaceController: WKInterfaceController {
    //MARK: - IB
  
  @IBOutlet var play: WKInterfaceMovie!
    //MARK: - Property
    var audioPlayer = AVAudioPlayer()
  
    //MARK: - View
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
      let soundPath = Bundle.main.path(forResource: "Reynosomechanics", ofType: "m4a")
      let soundPathUrl = URL(fileURLWithPath: soundPath!)
//      do {
//        try audioPlayer = AVAudioPlayer(contentsOf: soundPathUrl)
//        audioPlayer.prepareToPlay()
//        audioPlayer.play()
//      } catch {
//        print("error in audioPlay")
//      }
      play.setLoops(true)
      play.setMovieURL(soundPathUrl)
      
      
      
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

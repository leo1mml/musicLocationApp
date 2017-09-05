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
  
  @IBAction func activePause() {
    play.pause()
  }

  @IBAction func activePlay() {
    play.play()
  }
 
  @IBOutlet var play: WKInterfaceInlineMovie!
  
    //MARK: - Property
    var audioPlayer = AVAudioPlayer()
    let audioPathKey = AudioPathChaveValor()
  
 
  
    //MARK: - View
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        soundConfig()
//      guard let key = context as? String else {
//        return
//      }
      
//      let soundPath = Bundle.main.path(forResource: key, ofType: AudioPathChaveValor.regiaoMusica[key])
      
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
  
  
  
   //MARK: - Method
  func soundConfig(){
    let soundPath = Bundle.main.path(forResource: "Ceilandia", ofType: "m4a")
    let soundPathUrl = URL(fileURLWithPath: soundPath!)
    self.play.setMovieURL(soundPathUrl)
    self.play.playFromBeginning()
  }

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  override func dismissMediaPlayerController() {
    
  }

}

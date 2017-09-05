//
//  InterfaceController.swift
//  AudioWatch Extension
//
//  Created by Arthur Franco Junqueira Araujo de Castro on 04/09/17.
//  Copyright © 2017 BEPiD UCB. All rights reserved.
//

import WatchKit
import Foundation



class InterfaceController: WKInterfaceController {

    //MARK: - IB
  
  @IBOutlet var player: WKInterfaceInlineMovie!
  @IBAction func Play() {
    player.play()
  }
  
  
  @IBAction func Pause() {
    player.pause()
  }
  //MARK: - Property
  
  let audioPathKey = AudioPathChaveValor()
  
  
  
  //MARK: - View
  override func awake(withContext context: Any?) {
    super.awake(withContext: context)
    soundConfig()
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
    
    //      guard let key = context as? String else {
    //        return
    //      }
    
    //      let soundPath = Bundle.main.path(forResource: key, ofType: AudioPathChaveValor.regiaoMusica[key])
    
    let soundPath = Bundle.main.path(forResource: "Ceilandia", ofType: "m4a")
    let soundPathUrl = URL(fileURLWithPath: soundPath!)
    self.player.setMovieURL(soundPathUrl)
    self.player.playFromBeginning()
    
}


}

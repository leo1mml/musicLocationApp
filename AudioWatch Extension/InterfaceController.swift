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

    //MARK: - Property
    var audioPlayer = AVAudioPlayer()
  
    //MARK: - View
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
      var soundPath = Bundle.main.path(forResource: "Reynosomechanics", ofType: "m4a")
      var soundPathUrl = URL(fileURLWithPath: soundPath!)
      
      
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

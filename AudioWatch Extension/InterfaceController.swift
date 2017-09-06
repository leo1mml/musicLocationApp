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
    
    @IBOutlet var mapView: WKInterfaceMap!
    @IBOutlet var playButton: WKInterfaceButton!
    @IBOutlet var player: WKInterfaceInlineMovie!
    
    var isPlaying = false
    
    @IBAction func Play() {
        
        if isPlaying {
            player.pause()
            playButton.setTitle("Play")
        } else {
            player.playFromBeginning()
            playButton.setTitle("Stop")
        }
        
        isPlaying = !isPlaying
    }
    
    //MARK: - View
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        guard let key = context as? String else {
            return
        }
        
        let soundPath = Bundle.main.path(forResource: key, ofType: AudioPathChaveValor.regiaoMusica[key])
        let soundPathUrl = URL(fileURLWithPath: soundPath!)
        self.player.setAutoplays(false)
        self.player.setMovieURL(soundPathUrl)
        
        switch key {
        case "Plano":
            mapView.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.7960078, longitude:-47.8789757), with: .purple)
        case "Taguatinga":
            mapView.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.8131658,longitude:-48.0479737), with: .green)
        default:
            mapView.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.8273938,longitude:-48.2005217) , with: .purple)
        }
        
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

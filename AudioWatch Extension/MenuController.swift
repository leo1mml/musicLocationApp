//
//  MenuController.swift
//  AulaExampleAudioWatch
//
//  Created by Gabriel Reynoso on 06/09/17.
//  Copyright © 2017 BEPiD UCB. All rights reserved.
//

import WatchKit

class MenuController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
//    @IBAction func plano() {
//        pushController(withName: "InterfaceController", context: "Plano")
//    }
//    
//    @IBAction func ceilandia() {
//        pushController(withName: "InterfaceController", context: "Ceilandia")
//    }
//    
//    @IBAction func tagua() {
//        pushController(withName: "InterfaceController", context: "Taguatinga")
//    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        
        switch segueIdentifier {
            case "plano": return "Plano"
            case "tagua": return "Taguatinga"
            default: return "Ceilandia"
        }
    }
}

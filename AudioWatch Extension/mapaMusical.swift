//
//  mapaMusical.swift
//  AulaExampleAudioWatch
//
//  Created by Leonel Menezes on 05/09/17.
//  Copyright © 2017 BEPiD UCB. All rights reserved.
//

import WatchKit

class mapaMusical: WKInterfaceController, CLLocationManagerDelegate {
    @IBOutlet var viewDoMapa: WKInterfaceMap!
    var locationManager = CLLocationManager()
    //        set delegate
    
    
    override func awake(withContext context: Any?) {
        locationManager.delegate = self
        //        Set desiredAccuracy using a GPS of IP:
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //        request to use location
        
        locationManager.requestAlwaysAuthorization()
        //        start update location
        locationManager.startUpdatingLocation()
        
        //Ceilandia
        viewDoMapa.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.8273938,longitude:-48.2005217) , with: .purple)
        //Taguatinga
        viewDoMapa.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.8131658,longitude:-48.0479737), with: .green)
        //Guara
        viewDoMapa.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.8094658, longitude:-47.9730957), with: .red)
        //Cruzeiro
        viewDoMapa.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.7841988, longitude:-47.9405277), with: .green)
        //Plano
        viewDoMapa.addAnnotation(CLLocationCoordinate2D.init(latitude: -15.7960078, longitude:-47.8789757), with: .purple)
    }
    
}

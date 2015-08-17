//
//  ViewController.swift
//  Tutorial-Swift
//

import UIKit

class ViewController: UIViewController, CRApplicationDelegate {
    
    var app: CRApplication!
    
    override func viewDidLoad() {
        
        app = CRApplication(delegate: self, background: false)
        
        let gestures = [ "left" : CR_POINTS_LEFT,
            "circle" : CR_POINTS_CIRCLE,
            "right" : CR_POINTS_RIGHT ]
        
        let installed = app.installedGestureIdentifiers()
        
        app.setActiveGestureIdentifiers(gestures.keys.array)
        
        app.start()
    }
    
    
    // #pragma mark - CRApplicationDelegate
    
    func deviceDidDisconnect() {
        println(__FUNCTION__)
    }
    
    func deviceDidInitialize() {
        println(__FUNCTION__)
    }
    
    func didReceiveEvent(event: CRRingEvent) {
        println(__FUNCTION__)
    }
    
    func didReceiveGesture(identifier: String!) {
        
        if let g = identifier {
            println(__FUNCTION__ + " " + identifier)
        } else {
            println(__FUNCTION__ + " " + "not match")
            return
        }
    }
    
    func didReceiveQuaternion(quaternion: CRQuaternion) {
        println(__FUNCTION__)
    }
    
    func didReceivePoint(point: CGPoint) {
        println(__FUNCTION__)
    }
    
}
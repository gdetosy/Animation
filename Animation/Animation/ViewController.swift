//
//  ViewController.swift
//  Animation
//
//  Created by tosy on 16.12.22.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var startBtn: SpringButton!
    @IBOutlet weak var views: SpringView!
    override func viewDidLoad() {
        super.viewDidLoad()
        views.delay = 3
      
        views.animation = Animations.fadeIn.rawValue
        views.animate()
        
        
        
    }


    @IBAction func startAnimation(_ sender: Any) {
        startBtn.animation = Animations.shake.rawValue
        startBtn.animate()
        views.animation = Animations.zoomIn.rawValue
        views.animate()
        
    }
}


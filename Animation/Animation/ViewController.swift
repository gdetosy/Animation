//
//  ViewController.swift
//  Animation
//
//  Created by tosy on 16.12.22.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var forceLbl: UILabel!
    @IBOutlet weak var durationLbl: UILabel!
    @IBOutlet weak var delayLbl: UIStackView!
    @IBOutlet weak var curveLbl: UILabel!
    @IBOutlet weak var startBtn: SpringButton!
    @IBOutlet weak var views: SpringView!
    override func viewDidLoad() {
        super.viewDidLoad()
        views.layer.cornerRadius = views.layer.bounds.height / 2
        
        
      
      
        
        
        
    }


    @IBAction func startAnimation(_ sender: Any) {
        startBtn.animation = Animations.shake.rawValue
        startBtn.animate()
        views.animation = Animations.zoomIn.rawValue
        views.animate()
        
    }
}


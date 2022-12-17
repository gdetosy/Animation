//
//  ViewController.swift
//  Animation
//
//  Created by tosy on 16.12.22.
//

import Spring
import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var forceLbl: UILabel!
    @IBOutlet var durationLbl: UILabel!
    @IBOutlet var delayLbl: UILabel!
    @IBOutlet var curveLbl: UILabel!
    @IBOutlet var startBtn: SpringButton!
    @IBOutlet var views: SpringView!
    override func viewDidLoad() {
        settings()
        super.viewDidLoad()
    }
    
    @IBAction func startAnimation(_ sender: Any) {
        let y = arrayAnimations.randomElement()!
        nameLbl.text = "\(y)"
        startBtn.animation = Animations.shake.rawValue
        startBtn.animate()
        
        views.animation = y
        views.animate()
      
        views.force = round(CGFloat.random(in: 1...10) * 10) / 10
        views.duration = round(CGFloat.random(in: 1...10) * 10) / 10
        views.delay = round(CGFloat.random(in: 1...10) * 10) / 10
        views.curve = arrayCurves.randomElement()!
        forceLbl.text = "Force:" + " " + "\(views.force)"
        durationLbl.text = "Duration:" + " " + "\(views.duration)"
        delayLbl.text = "Delay:" + " " + "\(views.delay)"
        curveLbl.text = "Curve:" + " " + "\(views.curve)"
    }

    func settings() {
        nameLbl.text = ""
        forceLbl.text = "Force:" + " " + "\(views.force)"
        durationLbl.text = "Duration:" + " " + "\(views.duration)"
        delayLbl.text = "Delay:" + " " + "\(views.delay)"
        
        views.delay = 3
        startBtn.repeatCount = 3
        startBtn.animate()
        views.layer.cornerRadius = views.layer.bounds.height / 2
    }
}

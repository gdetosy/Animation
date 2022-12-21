//
//  ViewController.swift
//  Animation
//
//  Created by tosy on 16.12.22.
//

import Spring
import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var nameLbl: UILabel!
    @IBOutlet private var forceLbl: SpringLabel!
    @IBOutlet private var durationLbl: SpringLabel!
    @IBOutlet private var delayLbl: SpringLabel!
    @IBOutlet private var curveLbl: SpringLabel!
    @IBOutlet private var startBtn: SpringButton!
    @IBOutlet private var views: SpringView!
   
    override func viewDidLayoutSubviews() {
        views.layer.cornerRadius = views.layer.bounds.height / 2
    }
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "paper")!)
        settings()
        super.viewDidLoad()
    }
    
    @IBAction private func startAnimation(_ sender: Any) {
        let y = arrayAnimations.randomElement()!
     
        nameLbl.text = "\(y)"
        
        startBtn.animation = Animations.pop.rawValue
        startBtn.force = 1
        startBtn.animate()
        
        views.animation = y
        views.animate()
        viewColors.shuffle()
        views.backgroundColor = viewColors.randomElement()
        views.force = round(CGFloat.random(in: 1...10) * 10) / 10
        views.duration = round(CGFloat.random(in: 1...10) * 10) / 10
        views.delay = round(CGFloat.random(in: 1...10) * 10) / 10
        views.curve = arrayCurves.randomElement()!
        
        forceLbl.text = "Force:" + " " + "\(views.force)"
        durationLbl.text = "Duration:" + " " + "\(views.duration)"
        delayLbl.text = "Delay:" + " " + "\(views.delay)"
        curveLbl.text = "Curve:" + " " + "\(views.curve)"
    }

    private func settings() {
        views.backgroundColor = viewColors.randomElement()
        nameLbl.font = UIFont(name: "MoonFlower", size: 70)
        forceLbl.font = UIFont(name: "MoonFlower", size: 60)
        durationLbl.font = UIFont(name: "MoonFlower", size: 60)
        delayLbl.font = UIFont(name: "MoonFlower", size: 60)
        curveLbl.font = UIFont(name: "MoonFlower", size: 60)
        nameLbl.text = ""
        forceLbl.text = "Force:" + " " + "\(views.force)"
        durationLbl.text = "Duration:" + " " + "\(views.duration)"
        delayLbl.text = "Delay:" + " " + "\(views.delay)"
        curveLbl.text = "Curve:" + " " + "DEFAULT"
        
        
       
        startBtn.animation = Animations.fadeInUp.rawValue
        startBtn.delay = 0.1
        startBtn.animate()
        
        views.animation = Animations.fadeInDown.rawValue
        views.delay = 0.1
        views.animate()
       
        curveLbl.animation = Animations.zoomIn.rawValue
        curveLbl.delay = 0.6
        curveLbl.animate()
        
        delayLbl.animation = Animations.zoomIn.rawValue
        delayLbl.delay = 0.4
        delayLbl.animate()
        
        durationLbl.animation = Animations.zoomIn.rawValue
        durationLbl.delay = 0.2
        durationLbl.animate()
        
        forceLbl.animation = Animations.zoomIn.rawValue
        forceLbl.animate()
    }
}

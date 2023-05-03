//
//  ViewController.swift
//  FirstSpringAnimpp
//
//  Created by Zaki on 03.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private let animations = Animation.getAnimation()
    private var num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animations[num].animationType
        curveLabel.text = curveTypes.randomElement() ?? ""
        forceLabel.text = String(format: "%.2f", Double.random(in: 0.5 ..< 2.0))
        durationLabel.text = String(format: "%.2f", Double.random(in: 0.5 ..< 1.5))
        delayLabel.text = "1.50"
        
    }
    
    @IBAction func springAnimationRunButtonTapped(_ sender: SpringButton) {
    
        springAnimationView.animation = animations[num].animationType
        springAnimationView.curve = curveTypes.randomElement() ?? ""
        springAnimationView.delay = 1.5
        springAnimationView.force = Double.random(in: 0.5 ..< 2.0)
        springAnimationView.duration = Double.random(in: 0.5 ..< 1.5)
        springAnimationView.animate()
        
        animationLabel.text = animations[num].animationType
        curveLabel.text = springAnimationView.curve
        forceLabel.text = String(format: "%.2f", springAnimationView.force)
        durationLabel.text = String(format: "%.2f", springAnimationView.duration)
        delayLabel.text = String(format: "%.2f", springAnimationView.delay)
        
        if num == (animations.count - 1) {
            num = 0
        } else {
            num += 1
        }
        
        sender.setTitle(animations[num].animationType, for: .normal)
    }
}


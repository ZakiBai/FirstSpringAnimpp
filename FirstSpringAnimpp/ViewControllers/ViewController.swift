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
        curveLabel.text = animations[num].curveType
        forceLabel.text = animations[num].force
        durationLabel.text = animations[num].duration
        delayLabel.text = animations[num].delay
        
    }
    
    @IBAction func springAnimationRunButtonTapped(_ sender: SpringButton) {
    
        springAnimationView.animation = animations[num].animationType
        springAnimationView.curve = animations[num].curveType
        springAnimationView.delay = Double(animations[num].delay) ?? 0
        springAnimationView.force = Double(animations[num].force) ?? 0
        springAnimationView.duration = Double(animations[num].duration) ?? 0
        springAnimationView.animate()
        
        animationLabel.text = animations[num].animationType
        curveLabel.text = animations[num].curveType
        forceLabel.text = animations[num].force
        durationLabel.text = animations[num].duration
        delayLabel.text = animations[num].delay
        
        if num == (animations.count - 1) {
            num = 0
        } else {
            num += 1
        }
        
        sender.setTitle(animations[num].animationType, for: .normal)
    }
}


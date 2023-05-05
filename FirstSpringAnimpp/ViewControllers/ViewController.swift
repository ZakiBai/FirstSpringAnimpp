//
//  ViewController.swift
//  FirstSpringAnimpp
//
//  Created by Zaki on 03.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.randomAnimation
    
    //MARK: - IB Actions
    @IBAction func runAnimationButtonTapped(_ sender: UIButton) {
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.force = animation.force
        springAnimationView.animate()
        animationLabel.text = animation.description
        
        animation = Animation.randomAnimation
        sender.setTitle("Run \(animation.animation)", for: .normal)
        
    }
    
}


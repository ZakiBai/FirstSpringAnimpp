//
//  Animation.swift
//  FirstSpringAnimpp
//
//  Created by Zaki on 03.05.2023.
//

struct Animation: CustomStringConvertible {
    let animation: String
    let curve: String
    let force: Double
    let delay: Double
    let duration: Double
    
    var description: String {
        """
        Preset: \(animation)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Delay: \(String(format: "%.2f", delay))
        Duration: \(String(format: "%.2f", duration))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            animation: DataStore.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5 ..< 2.0),
            delay: 1,
            duration: Double.random(in: 0.5 ..< 1.0)
        )
    }
}


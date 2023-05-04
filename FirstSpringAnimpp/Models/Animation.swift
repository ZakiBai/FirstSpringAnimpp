//
//  Animation.swift
//  FirstSpringAnimpp
//
//  Created by Zaki on 03.05.2023.
//

struct Animation {
    let animationType: String
    let curveType: String
    let force: String
    let delay: String
    let duration: String
    
    static func getAnimation() -> [Animation] {
        var animations: [Animation] = []
        
        let animationTypes = DataStore.shared.animations.shuffled()
        let curveTypes = DataStore.shared.animations.shuffled()
        
        let miniteration = min(animationTypes.count, curveTypes.count)
        
        var forces: [String] = []
        for _ in 0 ..< miniteration {
            let force = String(format: "%.2f", Double.random(in: 0.5 ..< 2.5))
            forces.append(force)
        }
        
        var delays: [String] = []
        for _ in 0 ..< miniteration {
            let delay = String(format: "%.2f", Double.random(in: 1.0 ..< 1.5))
            delays.append(delay)
        }
        
        var durations: [String] = []
        for _ in 0 ..< miniteration {
            let duration = String(format: "%.2f", Double.random(in: 0.5 ..< 1.5))
            durations.append(duration)
        }
        
        for element in 0 ..< miniteration {
            let animation = Animation(
                animationType: animationTypes[element],
                curveType: curveTypes[element],
                force: forces[element],
                delay: delays[element],
                duration: durations[element]
            )
            animations.append(animation)
        }

        return animations
    }
}


//
//  Animation.swift
//  FirstSpringAnimpp
//
//  Created by Zaki on 03.05.2023.
//

struct Animation {
    
    let animationType: String
    
    static func getAnimation() -> [Animation] {
        [
            Animation(animationType: "pop"),
            Animation(animationType: "slideLeft"),
            Animation(animationType: "slideRight"),
            Animation(animationType: "slideDown"),
            Animation(animationType: "slideUp"),
            Animation(animationType: "squeezeLeft"),
            Animation(animationType: "squeezeRight"),
            Animation(animationType: "squeezeDown"),
            Animation(animationType: "squeezeUp"),
            Animation(animationType: "fadeIn"),
            Animation(animationType: "fadeOut"),
            Animation(animationType: "fadeOutIn"),
            Animation(animationType: "fadeInLeft"),
            Animation(animationType: "fadeInRight"),
            Animation(animationType: "fadeInDown"),
            Animation(animationType: "fadeInUp"),
            Animation(animationType: "zoomIn"),
            Animation(animationType: "zoomOut"),
            Animation(animationType: "fall"),
            Animation(animationType: "shake"),
            Animation(animationType: "flipX"),
            Animation(animationType: "flipY"),
            Animation(animationType: "morph"),
            Animation(animationType: "squeeze"),
            Animation(animationType: "flash"),
            Animation(animationType: "wobble"),
            Animation(animationType: "swing")
        ]
        
    }
    
}

let curveTypes = [
    "easeIn",
    "easeOut",
    "easeInOut",
    "linear",
    "spring",
    "easeInSine",
    "easeOutSine",
    "easeInOutSine",
    "easeInQuad",
    "easeOutQuad",
    "easeInOutQuad",
    "easeInCubic",
    "easeOutCubic",
    "easeInOutCubic",
    "easeInQuart",
    "easeOutQuart",
    "easeInOutQuart",
    "easeInQuint",
    "easeOutQuint",
    "easeInOutQuint",
    "easeInExpo",
    "easeOutExpo",
    "easeInOutExpo",
    "easeInCirc",
    "easeOutCirc",
    "easeInOutCirc",
    "easeInBack",
    "easeOutBack",
    "easeInOutBack"
]


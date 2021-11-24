//
//  Animations.swift
//  RandomSprite
//
//  Created by Андрей Соболев on 24.11.2021.
//

import Spring

struct Animation {
    
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "swing",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeInBack",
            force: CGFloat.random(in: 0.5...2),
            duration: CGFloat.random(in: 1.5...3)
        )
    }
}


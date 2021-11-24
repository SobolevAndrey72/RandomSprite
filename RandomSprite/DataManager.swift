//
//  DataManager.swift
//  RandomSprite
//
//  Created by Андрей Соболев on 24.11.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
}

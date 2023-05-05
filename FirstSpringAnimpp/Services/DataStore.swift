//
//  DataStore.swift
//  FirstSpringAnimpp
//
//  Created by Zaki on 04.05.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}

//
//  Enemy.swift
//  Project23
//
//  Created by Mahmud CIKRIK on 1.11.2023.
//

import Foundation
import SpriteKit

class EnemyProperties {
    
    let randomPosition: CGPoint
    let AngVelocity: CGFloat
    let XVelocity: Int
    let YVelocity: Int

    init() {
        
        randomPosition = CGPoint(x: Int.random(in: 64...960), y: -128)
        AngVelocity = CGFloat.random(in: -3...3)
        
        if randomPosition.x < 256 {
            XVelocity = Int.random(in: 8...15) * 20
        } else if randomPosition.x < 512 {
            XVelocity = Int.random(in: 3...5) * 20
        } else if randomPosition.x < 768 {
            XVelocity = -Int.random(in: 3...5) * 20
        } else {
            XVelocity = -Int.random(in: 8...15) * 20
        }

        YVelocity = Int.random(in: 24...32) * 20
    }
}

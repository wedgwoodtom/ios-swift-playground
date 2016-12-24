//
//  Polymorphism.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//

import Foundation

class GraphicObject {
    
    func draw() {
        print("does nothing")
    }
}

class SpaceShip: GraphicObject {
}

class EmpireSpaceShip: SpaceShip {
    override func draw() {
        print("draws an empire space ship")
    }
}

class RebellionSpaceShip: SpaceShip {
    override func draw() {
        print("draws a rebellion space ship")
    }
}

class DeathStar: GraphicObject {
    override func draw() {
        print("draws the Death Star")
    }
}

class Polymorphism {
    func run() {
        let spaceShips = [EmpireSpaceShip(), RebellionSpaceShip(), DeathStar()]
        
        for spaceShip in spaceShips {
            spaceShip.draw()
        }
    }
}

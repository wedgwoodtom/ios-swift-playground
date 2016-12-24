//
//  Closure.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//

// The programming technique of passing closures to a function instead of duplicating it’s source can be used to greatly increase the expressivity of code and avoid errors associated with boilerplate code and copy pasting.


import Foundation

class Closure {
    
    func square(a:Float) -> Float {
        return a * a
    }
    
    func cube(a:Float) -> Float {
        return a * a * a
    }
    
    // The closure! - so simple
    func averageOfFunction(a:Float,
                           b:Float,
                           f:((Float) -> Float)) -> Float
    {
        return (f(a) + f(b)) / 2
    }
    
    func run() {
        // call closure - square is just a function, thats cool!
        let answer1 = averageOfFunction(a: 3, b: 4, f: square)
        print(answer1)
        let answer2 = averageOfFunction(a: 3, b: 4, f: cube)
        print(answer2)
        
        // Can also do an in-line closure
        print(averageOfFunction(a: 3, b: 4, f: {x in return x + 100}))
    }
    
}

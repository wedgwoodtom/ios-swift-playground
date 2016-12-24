//
//  Strings.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//

import Foundation


class Strings {
    
    let animals = ["cat", "dog", "turtle", "swift", "elephant"]
    
    
    func sortAnimals() {
        
        // can use operators as closures - thats pretty neat!
        let sortedAnimals = animals.sorted(by: <)
        print(sortedAnimals)
        
        // can also use this simple syntax
        let anotherSortedAnimals = animals.sorted(by: {$0 < $1})
        print(anotherSortedAnimals)
        
        // or this lon form
        let anotherSortedAnimals2 = animals.sorted(by: { (first, second) -> Bool in
            return first < second
        })
        print(anotherSortedAnimals2)
    }
    
    func combine() {
        let aString = "Hello"
        
        // Let's play with strings today
        
        // we can combine strings using the + operator
        
        let newString = aString + " swift lovers" // "Hello swift lovers"
        
        // string interpolaton can also be used to combine strings
        let a = "BAT"
        let b = "MAN"
        
        // Note this cool syntax
        print("\(a) + \(b) = \(a + b)")
        // BAT + MAN = BATMAN
    }
    
    func joinList() {
        print(animals.joined(separator: ","))
    }
    
    
}

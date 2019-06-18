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
    
    
    func splitOnString() {
        let mathString: String = "12-37*2/5"
        let numbers = mathString.components(separatedBy: ["-", "*", "/"])
        print(numbers)
        
        let personsStr: String = "Tom L, Bob T, Mary H"
        let persons = personsStr.components(separatedBy: [","])
        print(persons)
    }
    
    func trimWhitespace() {
        let myString = "  \t\t  Let's trim all the whitespace  \n \t  \n  "
        let trimmedString = myString.trimmingCharacters(in: .whitespacesAndNewlines)
        print(trimmedString)
    }
    
    // https://useyourloaf.com/blog/swift-guide-to-map-filter-reduce/
    
    func splitOnStringAndTrim() {
        let personsStr: String = "Tom L\n Bob T, Mary H, ,"
        let persons = personsStr.components(separatedBy: [",", "\n"])
            .map({$0.trimmingCharacters(in: .whitespaces)})
            .filter({$0.count>0})
        print(persons)
        
        // long form
        let persons2 = personsStr.components(separatedBy: [",", "\n"])
            .map({(person: String) -> String in
                return person.trimmingCharacters(in: .whitespaces)
            })
            .filter({$0.count>0})
        print(persons2)
        
    }
    
    
}

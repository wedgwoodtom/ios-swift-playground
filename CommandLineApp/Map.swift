//
//  Map.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//

import Foundation

class Map {
    
//    var moneyArray = ["10", "20", "45"] // an array of strings
    var moneyArray : [Int] = [10, 20, 45] // an array of strings
    
    func oldWay() {
        var newArray : [String] = [] //Note that we have to specify the type of the array or else we'll get an type error
        
        for money in moneyArray {
            newArray.append("\(money)$")
        }
        
        print(newArray)
    }
    
    func newWay() {
        let newArray: [String] = moneyArray.map { (money) -> String in "\(money)€"}
        print(newArray)
    }
    
    func greaterThan30(dollar:Int) -> Bool {
        return dollar > 30
    }
    
    func filter() {
        let newArray: [Int] = moneyArray.filter(greaterThan30)
        print(newArray)
    }
    
}

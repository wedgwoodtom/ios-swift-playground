//
//  Singleton.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//

import Foundation

class Singleton {
    
    var count:Int = 0
    
    struct Static {
        static let instance = Singleton()
    }
    
    class var sharedInstance: Singleton {
        return Static.instance
    }
    
    func add() {
        count = count + 1
    }
    
    func debug() {
        print(count)
    }
    
    
}

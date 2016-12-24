//
//  main.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//
// Swift doesn’t have a main function; instead, it has a main file.
//
// It’s a good idea to keep your main.swift file as clean as possible and put all your classes and structs in their own files

import Foundation

print("Hello, World!")

let app = App()
app.printUsage()

let singleton:Singleton = Singleton.sharedInstance
singleton.debug()
singleton.add()
let singleton2:Singleton = Singleton.sharedInstance
singleton2.debug()
singleton2.add()
singleton2.debug()
singleton.debug()

let poly = Polymorphism()
poly.run()

let closure = Closure()
closure.run()

let map = Map()
map.oldWay()
map.newWay()
map.filter()

let strings = Strings()
strings.sortAnimals()
strings.combine()
strings.joinList()


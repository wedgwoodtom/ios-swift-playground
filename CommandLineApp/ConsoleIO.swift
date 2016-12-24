//
//  ConsoleIO.swift
//  CommandLineApp
//
//  Created by Thomas Patterson on 12/21/16.
//  Copyright © 2016 Thomas Patterson. All rights reserved.
//

import Foundation

class ConsoleIO {
    class func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        print("usage:")
        print("\(executableName) -a string1 string2")
        print("or")
        print("\(executableName) -p string")
        print("or")
        print("\(executableName) -h to show usage information")
        print("Type \(executableName) without an option to enter interactive mode.")
    }
}

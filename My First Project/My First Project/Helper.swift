//
//  Helper.swift
//  My First Project
//
//  Created by heaven on 10/13/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import Foundation

func randomIntBetween(low: Int, high: Int) -> Int {
    let range = high - (low - 1)
    
    return (Int(arc4random()) % range) + (low - 1)
}

func input() -> String {
    let keyword = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyword.availableData
    let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
    if let string = rawString {
        return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    } else {
        return "Invalid input."
    }
}
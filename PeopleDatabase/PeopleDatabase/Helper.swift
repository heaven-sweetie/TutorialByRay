//
//  Helper.swift
//  PeopleDatabase
//
//  Created by heaven on 10/14/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import Foundation

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

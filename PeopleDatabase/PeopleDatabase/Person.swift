//
//  Person.swift
//  PeopleDatabase
//
//  Created by heaven on 10/14/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import Foundation

class Person {
    var firstName = ""
    var lastName = ""
    var age = 0
        
    func changeFirstName(newFirstName: String) {
        firstName = newFirstName
    }
    
    func enterInfo() {
        print("What's the first name?")
        firstName = input()
        
        print("What's \(firstName)'s last name?")
        lastName = input()
        
        print("How old is \(firstName) \(lastName)")
        if let number = Int(input()) {
            age = number
        }
    }
    
    func printInfo() {
        print("\(firstName) \(lastName) is \(age) years old")
    }
}

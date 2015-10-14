//
//  main.swift
//  PeopleDatabase
//
//  Created by heaven on 10/14/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import Foundation


var response: String
var people = [Person]()

repeat {
    let person = Person()
    person.enterInfo()
    person.printInfo()
    
    people.append(person)
    print("Number of people in the database: \(people.count)")

    print("Do you want to enter another name? (y/n)")
    response = input()
} while (response == "y")

print("Number of people in the database: \(people.count)")

for person in people {
    person.printInfo()
}



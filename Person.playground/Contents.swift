//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName = ""
    var lastName = ""
    var age = 0
    
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
    
    func changeFirstName(newFirstName: String) {
        firstName = newFirstName
    }
    
    func enterInfo() {
        print("What's your name?")
        firstName = input()
        print("First name : \(firstName)")
    }
}

var newPersion = Person()
newPersion.firstName = "Steve"
newPersion.lastName = "Park"
newPersion.age = 30

newPersion.changeFirstName("Sunjae")


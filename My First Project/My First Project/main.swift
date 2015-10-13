//
//  main.swift
//  My First Project
//
//  Created by heaven on 10/13/15.
//  Copyright © 2015 heaven. All rights reserved.
//

import Foundation

let answer = randomIntBetween(0, high: 100)
var turn = 1

while (true) {
    print("Guess \(turn): Enter a number between 1 to 100")
    
    let userInput = input()
    
    if let guess = Int(userInput) {
        if (guess > answer) {
            print("Lower")
        } else if (guess < answer){
            print("Higher")
        } else {
            print("Correct! The answer was \(answer)")
            
            break
        }
    } else {
        print("Invalid input! Please enter a number.")
        continue
    }
    turn += 1
}

print("It look  you \(turn) tries.")
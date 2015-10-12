//: Playground - noun: a place where people can play

import UIKit

var str = "Look what I can do_!!!"
var age = 18

var challenge1 = 123*456

var luckyNumber = 7
var costOfCandy = 1.25
var hungry = true
var name = "Ryland"

name = "Ry"

var favoriteGame = "Civilization"

let life = 42
let pi = 3.14
let canTouchThis = false
let captain = "Kirk"

let favoriteNumber = 5

let batmanCoolness = 10
var supermanCoolness = 9
var aquamanCoolness = 1

batmanCoolness < aquamanCoolness
supermanCoolness >= 8
batmanCoolness == (aquamanCoolness + supermanCoolness)
batmanCoolness > aquamanCoolness && batmanCoolness == (aquamanCoolness + supermanCoolness)
batmanCoolness < supermanCoolness || aquamanCoolness < supermanCoolness

var spidermanCoolness = 5
(spidermanCoolness + aquamanCoolness) > supermanCoolness
spidermanCoolness == 7 && aquamanCoolness == 2

if (batmanCoolness > spidermanCoolness) {
    spidermanCoolness = spidermanCoolness - 1
}
else if (batmanCoolness >= spidermanCoolness) {
    spidermanCoolness = spidermanCoolness - 1
}
else {
    spidermanCoolness = spidermanCoolness + 1
}

print("Hello, World")
print("Ry is awesome")
print(batmanCoolness)

var apples = 5
print("Sally has \(apples) apples")

print("Sally has \(apples - 5) apples")

var johnsGrade = 95
var samsGrade = 82
if (johnsGrade < samsGrade) {
    print("\(johnsGrade) is less than \(samsGrade)")
}
else if (johnsGrade > samsGrade) {
    print("\(johnsGrade) is greater than \(samsGrade)")
}
else {
    print("\(johnsGrade) is equal to \(samsGrade)")
}

var secondsLeft = 3
while (secondsLeft > 0) {
    print(secondsLeft)
    secondsLeft = secondsLeft - 1
}
print("Blast off!")
var donutsLeft = 6
while(donutsLeft > 0)  {
    print("You have \(donutsLeft) donuts left")
    donutsLeft = donutsLeft - 1
    print("You eat one donut")
}
print("You are all out of donuts :(")

var cokesLeft = 7
var fantasLeft = 4
while(cokesLeft > 0)  {
    print("You have \(cokesLeft) Cokes left.")
    cokesLeft = cokesLeft - 1
    if(cokesLeft <= fantasLeft)  {
        break
    }
}
print("You stop drinking Cokes.")

var goofOffTime = 10
var bossComing = 0
while(goofOffTime > 0)  {
    print("Goofing off!")
    goofOffTime = goofOffTime - 1
    bossComing = bossComing + 1
    if(goofOffTime == bossComing)  {
        break
    }
}
print("Done goofing off.")

var numbers = 0
while(numbers <= 10)  {
    if(numbers == 9)  {
        numbers = numbers + 1
        continue
    }
    print(numbers)
    numbers = numbers + 1
}

print("List of World Wars:")
var ww = 1
while(ww <= 5)  {
    if(ww == 3 || ww == 4)  {
        ww = ww + 1
        continue
    }
    print("World War \(ww)")
    ww = ww + 1
}
print("That's the beauty of World War V, Lois. It's so intense it skips over the other two. - Peter Griffin")

var optionalNumber: Int? = 5
optionalNumber = nil

if let number = optionalNumber  {
    print("It is a number")
}
else  {
    print("It is not a number")
}

var languagesLearned: String = "3"
var languagesLearnedNum: Int? = Int(languagesLearned)

if let num = languagesLearnedNum  {
    print("It is a number")
}
else  {
    print("It is not a number")
}

var tutorialTeam: String = "55"
var editorialTeam = 23

var tutorialTeamNum: Int? = Int(tutorialTeam)

if let numTutorial = tutorialTeamNum  {
    if(numTutorial > editorialTeam)  {
        print("\(numTutorial) is greater than \(editorialTeam)")
    } else if (numTutorial < editorialTeam) {
        print("\(numTutorial) is less than \(editorialTeam)")
    } else  {
        print("\(numTutorial) is equal to \(editorialTeam)")
    }
} else  {
    print("Invalid entry")
}

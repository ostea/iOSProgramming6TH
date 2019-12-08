import UIKit

// Control Flow

// for in loop
// you can use the for-in loop to iterate over  a seqringuence, such as item in an array, ranges of numbers, or characters in a string
//let names: [String] = ["chaos","lizzy"]
//for name in names {
//    print(name)
//}
//
//let numberOfLegs = ["鸡":2,"蚂蚁":6,"猫":4]
//for (animals,legCount) in numberOfLegs {
//    print("\(animals) have \(legCount) legs")
//}

// while
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 {
        diceRoll = 1
    }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}

print("Game over")

// repeat {}  while condition

// if else if else

// switch
let anotherChar : Character = "a"

switch anotherChar {
case "a" , "A":
    print("the letter A")
default:
    print("Not the letter A")
}


let anotherPoint = (9,9)
switch anotherPoint {
case (0,0):
    print("在原点")
case (let x, 0):
    print("在X-axis \(x)")
case (0, let y):
    print("在Y-axis  \(y)")
case let (x, y):
    print("somewhere else at (\(x),\(y))")
}



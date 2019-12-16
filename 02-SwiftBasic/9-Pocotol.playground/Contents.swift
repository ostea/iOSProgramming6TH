import UIKit

// protocol 协议
//protocol SomeProtocol {
//    var mustBeSettable:Int {
//        get set
//    }
//
//    var doesNotNeedToBeSettable:Int {
//        get
//    }
//    init(name:String)
//    mutating func toggle()
//    func random() -> Double
//}
//
//protocol FullName {
//    var fullName:String{
//            get
//    }
//}
//
//struct Person: FullName {
//    var fullName: String
//}
//
//let john = Person(fullName: "jhon appleseed")
//
//class Starship: FullName {
//    var prefix:String?
//    var name: String
//    init(name:String,prefix:String? = nil) {
//        self.name = name
//        self.prefix = prefix
//    }
//    var fullName: String {
//        return (prefix != nil ?prefix! + " ":"")+name
//    }
//}
//
//class SomeClass: SomeProtocol {
//    required init(name: String) {
//        //
//    }
//    func random() -> Double {
//        return 0
//    }
//
//    func toggle() {
//
//    }
//
//    var mustBeSettable: Int = 0
//    var doesNotNeedToBeSettable: Int = 0
//}

protocol RandomNumberGenerator {
    func random() -> Double
}
/*
    随机算法
 */
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

//var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
//
//for _ in 1...5 {
//    print("random \(d6.roll())")
//}

protocol DiceGame {
    var dice: Dice{get}
    func paly()
}

protocol DiceGameDelegate {
    func gemDidStart(_ game:DiceGame)
    func game(_ game:DiceGame,didStartNewTurnWithDiceRoll diceRoll:Int)
    func gameDidEnd(_ game:DiceGame)
}

class DiceGameTracker: DiceGameDelegate{
    var numberOfTurns = 0
    func gemDidStart(_ game: DiceGame) {
        numberOfTurns = 0
//        if game is SnakesAndLadders {
//            print("Started a new game of Snakes and Ladders")
//        }
        print("The game is using a \(game.dice.sides)-sided dice")
    }
    
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
        numberOfTurns += 1
        print("diceRoll \(diceRoll)")
    }
    
    func gameDidEnd(_ game: DiceGame) {
        print("game end")
    }
    
}

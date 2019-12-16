//: Playground - noun: a place where people can play

import UIKit

//class Vehicle {
//    var curSpeed = 0.0
//    var description:String {
//        return "traveling at \(curSpeed) miles per hour"
//    }
//    func makeNoise() {
//
//    }
//}
//
//
//class BenzCar: Vehicle{
//
//    override var curSpeed: Double{
//        didSet{
//
//        }
//    }
//    override var description: String{
//
//    }
//
//    override func makeNoise() {
//
//    }
//}
//
//let vehicle = Vehicle()
//print(vehicle.description)

//struct Celsius {
//    var temperatureInCelsius:Double
//    init(fromFahrenheit fahrenheit:Double) {
//        temperatureInCelsius = (Fahrenheit - 32.0)/1.0
//    }
//    init(fromKevlvin kelvin:Double) {
//        temperatureInCelsius = kelvin - 273.15
//    }
//
//}
//
//let boiling = Celsius(fromFahrenheit: 212.0)
//let freez = Celsius(fromKevlvin: 273.15)
//
//struct Fahrenheit{
//    var temperature = 32.0
//
//    init() {
//        temperature = 32.0
//    }
//
//}
//var f = Fahrenheit()
//print("\(f.temperature)")

//struct ShoppingListItem {
//    var name:String?
//    var quantity = 1
//    var purchased = false
//}
//let item = ShoppingListItem()
//struct Animal {
//    let species:String
//    init?(species:String) {
//        if species.isEmpty {
//            return nil
//        }
//        self.species = species
//    }
//}
//
//enum TemperatureUnit: Character {
//    case Kelvin = "K",Celsius = "C", Fahrenheit = "F"
//}
//let fahrenhei = TemperatureUnit(rawValue: "F")
//if fahrenhei != nil {
//
//}


/*
    析构器只适用于类类型，当一个类的实例被释放之前，析构器会被立即调用。析构器用关键字 deinit
 来标示，类似于构造器要用 init 来标示。
 */
class Bank {
    static var coinsInBank = 10_000
    // 分发货币
    static func distribute(coins numberOfCoinsRequested:Int)-> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    // 接受货币
    static func receive(coins:Int){
        coinsInBank += coins
    }
}
class Player {
    var coinsInPurse:Int
    init(coins:Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    
    deinit {
        print("释放了")
        Bank.receive(coins: coinsInPurse)
    }
    
    func win(coins:Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    
    
}

var playerOne:Player? = Player(coins: 100)
print("one \(playerOne!.coinsInPurse) and bank \(Bank.coinsInBank)")

playerOne!.win(coins: 9901)
print("one \(playerOne!.coinsInPurse) and bank \(Bank.coinsInBank)")

playerOne = nil
print("p1 离开游戏")
print(" bank \(Bank.coinsInBank)")



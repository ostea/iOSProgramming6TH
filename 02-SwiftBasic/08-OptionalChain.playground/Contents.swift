import UIKit
//
//class IDCard{
//    var cardId = 3602811
//
//}
//class Student {
//    // 身份证
//    var idCard:IDCard?
//}
//let s1 = Student()
////let id = s1.idCard!.cardId
//if let caed = s1.idCard?.cardId {
//    print("aa")
//} else {
//    print("bbb")
//}

/*
 错误处理 error handing
 */

enum VendingMachineError:Error {
    case invalidSelection // 选择无效
    case insufficentFunds(coinsNeeded:Int) // 金额不足
    case outOfStock // 缺货
}

struct Item{
    var price:Int
    var count:Int
}
class VendingMachine {
    var inventory = [
        "chips":Item(price: 19, count: 7),
        "pretzels":Item(price: 7, count: 11),
        "bar":Item(price: 12, count: 7)
    ]
    
    var coinsDeposited = 0
    func vend(itemNamed name:String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count>0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficentFunds(coinsNeeded: item.price - coinsDeposited)
        }
        coinsDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        print("dispendsing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}


var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 0
do {
    try buyFavoriteSnack(person: "choas", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("")
} catch VendingMachineError.outOfStock {
    
} catch VendingMachineError.insufficentFunds(let coinsNeeded){
    
}

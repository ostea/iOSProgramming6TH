import UIKit

/*
 泛型
 */

func swapTwoInts (_ a:inout Int,_ b: inout Int)
{
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoValues<V>(_ a:inout V,_ b:inout V) {
    let temp = a
    a = b
    b = temp
}
var someInt = "some"
var anotherInt = "another"
swapTwoValues(&someInt, &anotherInt)
print("some= \(someInt)  another=\(anotherInt)")

struct IntStack {
    var items = [Int]()
    mutating func push(_ item:Int) -> Void {
        items.append(item)
    }
    
    mutating func pop() ->Int {
        return items.removeLast()
    }
}

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item:Element)
    {
        items.append(item)
    }
    mutating func pop() ->Element {
        return items.removeLast()
    }
}
extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

extension Stack {
    var bottomItem: Element? {
        return items.isEmpty ? nil :
        items[-1]
    }
}


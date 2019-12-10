import UIKit

var a  = {
    (goods: [String]) -> Bool in
    return !goods.isEmpty
}

//print(type(of: a))


func test1(name:String,param:([Int]?)->String) ->Void
{
    print(name )
    
    print(param(nil))
}

//test1(name: "h", param: <#T##([Int]?) -> String#>)

func displatTotal(goodsPrice:[Int]?)->String
{
    var totalPrice = 0
    if let goods = goodsPrice {
        if goods.isEmpty {
            return "is nil"
        }
        for item in goods {
            totalPrice += item
        }
    }
    return String(totalPrice)
}
//print(displatTotal(goodsPrice: nil))


func play1(val: Int) ->Int
{
    print(val*val)
    return val*val
}

func play2(val: Int) ->Int
{
    print(val + val)
    return val+val
}

func test(param : Bool) -> (Int) -> Int
{
    return param ? play1 : play2
}

test(param: true)(10)


func test3(param : Bool) -> (Int) -> Int
{
    return param ?
        {(val: Int) -> Int in
            print(val + val)
            return val + val
        } :
        { (val: Int) -> Int in
            return val * val
        }
}
let val=test3(param: false)(6)
print(val)


func test5(param:(Int)->Void)
{
    
}

test5(param: {(value:Int) -> Void in
    print(value)
})
//test5(param(10))

enum Book
{
    case A ="a"
    case B = "b"
    
}
func selectBook(bookType:Book) -> String {
    if bookType == .A {
        return "a"
    } else {
        return String(bookType)
    }
}

selectBook(bookType: Book.B)

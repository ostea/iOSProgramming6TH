/*
    2-1 Swift 数据类型
    type in Swift
 */
import UIKit

//
//var str = "Hello,World!"
//
//
//
//// 常量与变量
//let yl=9.8
//var age = 28
//var welcomMsg : String
//
//welcomMsg="i love u ,my baby lizzy"
//
//print("\(age) and msg \(welcomMsg)")
//
//var isOk = true;print(isOk)
//
//let orangesAreGrange = true
//let sCurrenrN = false

// tuples

var sHttpcode  = (404,"Not Found")


print(sHttpcode)


let  optionalVal = "123"

let convertNumber = Int.init(optionalVal)
//
//print(convertNumber)
//
//if convertNumber != nil
//{
//    print("the num is not nil and val = \(convertNumber!)")
//}else{
//    print("It is a null val")
//}
// 元组
//let http404Error = (statusCode: 404,statusMsgs:"Not Found")
//
//let (statusCode,statusMsg) = http404Error
//
//print(statusCode)
//
//let (justTheStatusCode,_) = http404Error
//print(http404Error.statusCode)
//
//
//
//
///*
// 可选绑定
// optional binding
// */
//
//let optionStr = "12345aaa"
//
//let converNum = Int(optionStr)
//
//if let tempNum = converNum {
//    print(tempNum)
//} else {
//    print("nil")
//}
//
//if let firstNum = Int("4") , let secondNum = Int("7") , firstNum < secondNum && secondNum < 100 {
//    print("\(firstNum) < \(secondNum) <100")
//}


// assert 断言
let age = 3
assert(age >= 0)


// 
















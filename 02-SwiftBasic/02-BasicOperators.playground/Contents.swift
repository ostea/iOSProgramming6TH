import UIKit

// 赋值运算
let (x,y) = (2,4)

print("\(x) and \(y)")

if x != y {
    print("hell")
}
// 算数运算

1+2
56-3
2*3
10.0/2.5
// 字符创拼接 +
print("hello,"+"world")

var a = 1
a += 2
a += 2

// 三木运算  condition bool  ？ a val ： bval

// 对于 optional 类型，可使用 ?? 判断是否为 nil
let defaultColor = "black"
var userInputColor : String?

userInputColor = "yellow"

var resultColor = userInputColor ?? defaultColor

// Range 左闭右闭...    左闭右开..<    左开右闭
//for index in 1...6 {
//    print(index)
//}

let names = ["JACK MA","Pony","Robin"]

let count = names.count


//for position in 0..<count {
//    print("user \(position+1) is called \(names[position])")
//}
// 从某个 pos开始或结束    pos...  or   ...pos
for name in names[...1] {
    print(name)
}
//
let range = ...5
let range1 = 1..<3

range1.contains(3)

// 逻辑运算符  非！  与&&  或||

















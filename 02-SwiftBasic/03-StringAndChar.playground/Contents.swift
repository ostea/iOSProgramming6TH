/*
 * @author chaos
 * String and Characters 字符串及字符
 */
import UIKit
//
//// single line string
//let someStr = "some thing literal value"
//// multi line String
//let someChar = """
//    these are the same, "where shell i beagi,please"\
//    he asked.
//    " i love study!"
//"""
//
//print(someChar)

// empty
var emptyStr = ""

var emptyStr1 = String()

if emptyStr1.isEmpty {
    print("empty")
}

// String 是值类型
//var char2 : Character = "s"
//
//for char in "dogAndCat" {
//    print(char)
//}

//let extra: [Character] = ["L","O","V","E"]
//let loveStr = String(extra)
//print(loveStr)
//
//
//// counting characters
//let MAP_START_URL = "com.baidu.naviauto.aidl.goHome"
//
// 字符拼接  +  append
// 多行文本拼接

let greetingMsg = "Good Morning!"
//greetingMsg[greetingMsg.startIndex]
//
//greetingMsg[greetingMsg.index(after: greetingMsg.startIndex)]
//
//let index = greetingMsg.index(before: greetingMsg.endIndex)
//
//greetingMsg[index]

// insert and remove
var welcomeMsg = "欢迎来到江西"
welcomeMsg.insert("!", at: welcomeMsg.endIndex)

print(welcomeMsg)
//
//welcomeMsg.remove(at: welcomeMsg.index(welcomeMsg.startIndex, offsetBy: 0))
//print(welcomeMsg)

let range = welcomeMsg.index(welcomeMsg.endIndex, offsetBy: -4)..<welcomeMsg.endIndex;
welcomeMsg.removeSubrange(range)
print(welcomeMsg)

// substring

let greeting = "hello,world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex


let subStr = greeting[greeting.index(after: index)...]

let temStr = String(subStr)

if temStr == subStr {
    print("same")
}


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SeceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("cell") {
        act1SeceneCount += 1
    }
}
print(act1SeceneCount)



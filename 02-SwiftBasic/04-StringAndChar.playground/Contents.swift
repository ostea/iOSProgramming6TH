/*
    @author chaos
    Collection Types
 */
import UIKit

//  Array Set Dictionary

// Array 数组 ： 有序列表存储同一类型的值，有序可重复 类型明确
// Array<someType>
//var shoppingList:[String] = ["鸡蛋","猪肉","大白菜","西红柿"]
//// CRUD for Array
//let shopLen = shoppingList.count
//var isEmpty = shoppingList.isEmpty
//// 添加append
//shoppingList.append("土豆")
//shoppingList += ["四季豆"]
// 查看数组内element
//shoppingList[0] = "豆腐"
//shoppingList[0...2] = ["c1","c2"]

//print(shoppingList)
//
//shoppingList.insert("豌豆", at: 0)
//shoppingList.remove(at: 0)
//shoppingList.remove(at: 1)
//shoppingList.remove(at: 2)


// 遍历数组
//for food in shoppingList {
//    print(food)
//}

//for (index, value) in shoppingList.enumerated() {
////    print("index \(index) and vale = \(value)")
//    if value == "西红柿" {
//        print("西红柿的postion is \(index)")
//    }
//}

// 创建一个空数组并初始化
//var todyTasks = [Int]()
//todyTasks.append(3)
//todyTasks = []

//var weekend = Array<Int>()
//weekend.count
//weekend.append(3)
//weekend=[]






// Set 集合： 无序 不可重复 类型明确 Set<someType>
//var weekend = Set<String>()
//
//weekend.insert("星期日")
//weekend.insert("星期一")
//weekend.insert("星期二")
//weekend.insert("星期三")
//weekend.insert("星期四")
//weekend.insert("星期五")
//weekend.insert("星期六")
//
//weekend=[]
//print(weekend)
var favouriteBooks: Set = ["朝花夕拾","狂人日记","雷雨"]

favouriteBooks.isEmpty

favouriteBooks.insert("jazz")

var fav:Set<String> = []



//if let removeBook = favouriteBooks.remove("jazz") {
//    print("\(removeBook) over it")
//}


for book in favouriteBooks {
    print(book)
}

for booName in favouriteBooks.sorted() {
    print(booName)
}

// 集合运算操作  交集 补集  并集 ...
let a: Set<Int> = [1,2,3,4,5,6];
let b: Set<Int> = [4,5,6,7,8,9];

a.intersection(b)
a.symmetricDifference(b)
a.union(b)
a.subtracting(b)

let houseAnimals:Set = ["鸡","鸭","狗"]

let farmAnimals:Set = ["鸡","鸭","狗","牛","马","羊"]

let cityAnimals:Set = ["兔","猫"]

houseAnimals.isDisjoint(with: cityAnimals)

// Dictionary: 字典 key-val
// 字典是一种存储多个相同类型的值容器，每个值val都有唯一的key

// 创建空字典
var nameOfIntegers = [Int: String]()

nameOfIntegers[1] = "one"
nameOfIntegers = [:]

var airports = ["BJA": "北京航空","SZA": "深圳航空"]
airports

airports.count
airports.isEmpty

airports["GDA"] = "南方航空"

if let oldVal = airports.updateValue("广东航空", forKey: "GDA") {
    print("更新 key GDA为广东航空 and oldVal \(oldVal)")
}

let airportCodes = [String](airports.keys)


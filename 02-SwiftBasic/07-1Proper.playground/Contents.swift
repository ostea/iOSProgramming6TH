//: Playground - noun: a place where people can play

import UIKit
//
//class DataImporter {
//    var fileName = "data.txt"
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//}
//
//let manager = DataManager()
//manager.data.append("some data")
//manager.data.append("some more data")
//
//print(manager.importer.fileName)
//
//struct Ponit {
//    var x = 0.0,y = 0.0,z = 0.0
//}
//struct Size {
//    var length = 0.0 , width = 0.0, height=0.0
//}
//
//struct Rect {
//    var origin = Ponit()
//    var size = Size()
//    var center: Ponit {
//        get {
//            let centerX = origin.x + (size.length/2)
//            let centerY = origin.x + (size.width/2)
//            let centerZ = origin.z + (size.height/2)
//            return Ponit(x: centerX, y: centerY, z: centerZ)
//        }
//        set {
//            origin.x = newValue.x
//        }
//        set(newCenter){
//            origin.x = newCenter.x - (size.length/2)
//            origin.y = newCenter.y - (size.width/2)
//            origin.z = newCenter.z - (size.height/2)
//        }
//    }
//}
//var square = Rect(origin: Ponit(x: 0.0, y: 0.0, z: 0.0), size: Size(length: 10.0, width: 10.0, height: 10.0))
//let initialSuqareCenter = square.center
//square.center = Ponit(x:15.0, y:15.0, z:15.0)
//print("\(square.origin.x)")

class StepCounter {
    
    var totalSteps:Int = 0 {
        willSet {
            print("今天的总步数是\(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("今天新增了\(totalSteps - oldValue)")
            }
        }
    }
}

let stepCount = StepCounter()
stepCount.totalSteps = 200
print(stepCount.totalSteps)





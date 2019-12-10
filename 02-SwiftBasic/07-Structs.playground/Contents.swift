import UIKit

//struct Student
//{
//    var name = "unknown"
//    var age = 0
//    var score = 0.0
//    var ispass = false
//
//    static var schoolName = "家里蹲大学"
//
//    init() {
//
//    }
//
//    init(name:String,age:Int,score:Double) {
//        self.name=name
//        self.age=age
//        self.score=score
//        if self.score < 60 {
//            self.ispass=false
//        }else{
//            self.ispass=true
//        }
//    }
//
//    func getName() -> String {
//        return self.name
//    }
//
//   mutating func updateScore(newScore score:Double) -> Void {
//        self.score = score
//        if self.score < 60 {
//            self.ispass=false
//        } else{
//           self.ispass=true
//        }
//    }
//
//    func isPass() -> Bool {
//        return self.ispass
//    }
//
//}
//
//
//var s1 = Student(name: "chaos", age: 12, score: 90)
//
//print(s1.getName())
//s1.updateScore(newScore: 12)
//print(s1.isPass())
//print(Student.schoolName)
//
//Student.schoolName = "清华大学"
//
//print(Student.schoolName)
//
//struct Test
//{
//    var age = 10
//}
//
//var t1 = Test()
//print(t1.age)
//var t2=t1
//print(t2.age)
//t2.age=100
//print("\(t1.age)===\(t2.age)")

//struct Engineer
//{
//    init() {
//
//    }
//    private var val = ""
//    var name:String
//    {
////        set(param)
////        {
////            self.val = param
////            print("this set new val \(val)")
////        }
//        get
//        {
//            print("get the val \(val) _chaos")
//            return val+"_chaos"
//        }
//
//    }
//
//}
//
//var e1 = Engineer()
//
////e1.name = "chaos"
//e1.name

struct Person
{
    var name:String = "未知"
    {
        willSet(new_value)
        {
            print("willSet - "+new_value)
        }
        
        didSet(old_value)
        {
            print("old_value - "+old_value)

        }
    }
    
    private var os:[String] = ["android","iso"]
    
    subscript(index:Int,param:String)->String
    {
         
    }
    
}

var p1 = Person()

p1.name = "hello"

print(p1.name)

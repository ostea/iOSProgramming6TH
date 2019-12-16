//: Playground - noun: a place where people can play

import UIKit

//enum CompassPoint
//    case north
//    case south
//    case east
//    case west
//}

//var direction = CompassPoint.east
//switch direction {
//case .north:
//    print("it is north")
//
//case .west:
//    print("it is wesr")
//}

enum Barcode{
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var producBarCode = Barcode.upc(8, 10, 21, 11)
producBarCode = .qrCode("abcijj")

print(Barcode.qrCode("123ssds").rawValue)

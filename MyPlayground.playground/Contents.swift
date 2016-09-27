//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Square {
    
    var topLeftCorner: (Double, Double)
    var lengthOfSide: Double
    var area : Double {
        
        return lengthOfSide * lengthOfSide
    }
    
    init (topLeftCorner: (Double, Double), lengthOfSide: Double) {
        
        self.topLeftCorner = topLeftCorner
        self.lengthOfSide = lengthOfSide
    
    }
}

var square1 = Square(topLeftCorner: (0.0,0.0), lengthOfSide: 10.0)
var square2 = Square(topLeftCorner: (5.5,7.25), lengthOfSide: 12.0)
print("Area is \(square2.area)")
square2.lengthOfSide = 4.0
print("Area is \(square2.area)")

class Square6 {
    
    var topLeftCorner: (Double, Double)
    var lengthOfSide: Double
    var area : Double {
        get {
            return lengthOfSide * lengthOfSide
        } set {
            lengthOfSide = sqrt(newValue)
        }
    }
    init (topLeftCorner: (Double, Double), lengthOfSide: Double) {
        
        self.topLeftCorner = topLeftCorner
        self.lengthOfSide = lengthOfSide
        
    }
}

var square10 = Square6(topLeftCorner: (10.10, 10.10), lengthOfSide: 100)
print("Area is \(square10.area)")
print("Length of side is \(square10.lengthOfSide)")

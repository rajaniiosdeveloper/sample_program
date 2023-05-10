import UIKit
import Foundation
var greeting = "Hello, playground"


func findDuplecqate() {
    
    let duplicateArray = [2,2,4,3,3]
    var arrayValue = [Int]()
    var cotainValue = [Int]()
    
    for obj in duplicateArray {
        if arrayValue.contains(obj){
            cotainValue.append(obj)
        }else{
            arrayValue.append(obj)
        }
    }
    print(cotainValue)
}
 findDuplecqate()



func reveseWord(){
  var string = "i love coading"
    
    var array = string.components(separatedBy: " ")
    var reverseArray = [String]()
    for value in array {
        if let reverseString = value.reversed() as? String {
        reverseArray.append(reverseString)
        }
    }
    
    print(reverseArray)
}

reveseWord()

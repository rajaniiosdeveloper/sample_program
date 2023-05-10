import UIKit
import Foundation

var greeting = "Hello, playground"

func checkIndexForNumber(array:[Int],target:Int)->[Int]? {
   
    var outPutArrray = [Int]()
   
    if array.count < 2 {
        return nil
    }
   
    for (index,_) in array.enumerated() {
       
        let j = index+1
        if j < array.count - 1 {
      
            for i in j...array.count - 1 {
            
            let checkOutputValue = array[index] + array[i]
                
            if checkOutputValue == target {
                outPutArrray.append(index)
                outPutArrray.append(i)
            }
    }
        }
    }
        return outPutArrray
}

if let outPutarray  = checkIndexForNumber(array:[2,7,11,15] , target:17) {
    print(outPutarray)
}



func checkBrack(str: String) -> Bool{
    
    if str.count % 2 == 0 {
        
        let array
        
         
        return true
        
    }else {
        return false
    }
    
    
}

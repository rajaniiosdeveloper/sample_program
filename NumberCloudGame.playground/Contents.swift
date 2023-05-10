import UIKit
import Foundation

var greeting = "Hello, playground"

func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
var count = 0
var i = 0
    
    while i < c.count - 1  {
        if( i + 2 < c.count) && c[i + 2] == 0  {
            i = i + 2
        }else{
            i = i + 1
        }
        count = count + 1
    }
    print(count)
    return count
}


jumpingOnClouds(c: [0 ,0 ,0, 0 ,1 ,0])

import UIKit
import Foundation
var greeting = "Hello, playground"

func repeatedString(s: String, n: Int) -> Int {
    // Write your code here
    
    if s.count < 0 || n < 0{
        return 0
    }
    
    var aCount = 0
    var i = 0
    var mutableString = ""
    while i < n {
        for char in s {
            if i < n {
            mutableString =  mutableString + String(char)
                i = i + 1
            }
        }
    }
    
    for char in mutableString {
        if char == "a" {
            aCount = aCount + 1
        }
    }
    
  print(mutableString)
    print(aCount)
    return aCount

}

repeatedString(s: "artg", n:359000 )


func repeatedStringGit(s: String, n: Int) -> Int {
    
    if s.count <= 0 || n <= 0 {
        return 0
    }
    
    if s.count == 1 {
        if s != "a" {
            return 0
        }
        return n
    }
    let subArr = s.components(separatedBy: "a")
    if n == 1 {
        if subArr.count - 1 > 0  {
            return subArr.count - 1
        } else {
            return 0
        }
    }
    
    let strCount = subArr.count - 1
    if strCount <= 0 {
         return 0
    }
    
    
    var times = n / s.count
    times *= strCount
    var balance = n % s.count
    var i = 0

    while balance > 0 {
        
        var strr = s[s.index(s.startIndex, offsetBy: i)]
        if strr == "a" {
            times += 1
        }
        balance -= 1
        i += 1
    }
    return times
}



repeatedString(s: "artg", n:359000 )

protocol Animal {
    var name:String {get}
}

protocol WildAnimal {
    var color:String {get}
}

extension WildAnimal : Animal {
    
}




import UIKit

var greeting = "Hello, playground"
let q = DispatchQueue.global()
 q.sync {
     print("print1")
     DispatchQueue.main.sync {
         print("print2")
     }
 }

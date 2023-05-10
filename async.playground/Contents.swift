import UIKit

var greeting = "Hello, playground"

let customQueue = DispatchQueue.init(label: "CustomQ")
 customQueue.sync {
     print("print1")
 customQueue.async {
         print("print2")
         
     }
 }
 customQueue.sync {
     print("print3")
 }

import UIKit
import Foundation

/*There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

Example
There is one pair of color  and one of color . There are three odd socks left, one of each color. The number of pairs is .

Function Description

Complete the sockMerchant function in the editor below.

sockMerchant has the following parameter(s):

int n: the number of socks in the pile
int ar[n]: the colors of each sock
Returns

int: the number of pairs
Input Format

The first line contains an integer , the number of socks represented in .
The second line contains  space-separated integers, , the colors of the socks in the pile.
 Sample Input

 STDIN                       Function
 -----                       --------
 9                           n = 9
 10 20 20 10 10 30 50 10 20  ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
 Sample Output

 3
 */


var greeting = "Hello, playground"


func sockMerchant(n: Int, ar: [Int]) -> Int {
    
var count = 0
    var keyValuepair = [String:Int]()
    for value in ar {
        let iskeyExist = keyValuepair[String(value)] != nil
        if iskeyExist {
            let keyVlaue = keyValuepair[String(value)]
            keyValuepair[String(value)] = keyVlaue! + 1
        }else{
            keyValuepair[String(value)] = 1
        }
    }
    
    let dictionaryArray = Array(keyValuepair)
    for obj in dictionaryArray {
            let value = obj.value / 2
            print(value)
        if value > 0 {
            let finalValue = count + value
            count = finalValue
        }

    }
    print(count)
    return count
}

sockMerchant(n: 10, ar: [1, 1, 3, 1 ,2, 1 ,3 ,3 ,3 ,3])


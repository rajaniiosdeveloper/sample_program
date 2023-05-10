import UIKit

var greeting = "Hello, playground"

func checkParentheses(s: String) -> Bool {
    let pairs: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
    var stack: [Character] = []
    for char in s {
        if let match = pairs[char] {
            stack.append(match)
        } else if stack.last == char {
            stack.popLast()
        } else {
            return false
        }
    }
    return stack.isEmpty
}

let value = checkParentheses(s: "((({[})))")

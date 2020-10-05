import UIKit

var str = "Hello, playground"

var stack = [Character]()
let mapBrackets : [Character: Character] = ["}":"{", ")":"(", "]":"["]
let openingBrackets = "([{"



class BalancedBrackets {
    func checkBalancedBrackets(string: String) -> Bool {
        var stack = [Character]()
        let mapBrackets : [Character: Character] = ["}":"{", ")":"(", "]":"["]
        let openingBrackets = "([{"
        for char in string {
            if openingBrackets.contains(char){
                stack.append(char)
            }
            else {
                if stack.isEmpty {
                    return false
                }
                else if let last = stack.last, last == mapBrackets[char] {
                    stack.popLast()
                }
                else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}

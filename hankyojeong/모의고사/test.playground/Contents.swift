import Cocoa
import Foundation

func solution(_ answers:[Int]) -> [Int] {
    // 1st Man
    var firstmanAnswer: [Int] = []
    var secondmanAnswer: [Int] = []
    var thirdmanAnswer: [Int] = []
    
    var first_index: Int = 1
    
    var second_index: Int = 2
    var second_odd: Bool = true
    var second_secondIndex: Int = 1
    
    var third_index: Int = 3
    var third_even: Bool = false
    
    for _ in 0 ... answers.count {
        firstmanAnswer.append(first_index)
        first_index += 1
        if first_index > 5 {
            first_index = 1
        }
        
        secondmanAnswer.append(second_index)
        if second_odd {
            second_odd = false
            
            if second_secondIndex == 2 {
                second_secondIndex += 1
            }
            
            second_index = second_secondIndex
            second_secondIndex += 1
            
            if second_secondIndex > 5 {
                second_secondIndex = 1
            }
        } else {
            second_odd = true
            second_index = 2
        }
        
        thirdmanAnswer.append(third_index)
        if third_even {
            switch third_index {
            case 3:
                third_index = 1
                break
            case 1:
                third_index = 2
                break
            case 2:
                third_index = 4
                break
            case 4:
                third_index = 5
                break
            case 5:
                third_index = 1
                break
            default:
                break
            }
            third_even = false
        } else {
            third_even = true
        }
    }
    
    var scores: [Int] = [0,0,0]

    var index: Int = 0
    for _ in 0 ... answers.count - 1 {
        if firstmanAnswer[index] == answers[index] {
            scores[0] += 1
        }
        if secondmanAnswer[index] == answers[index] {
            scores[1] += 1
        }
        if thirdmanAnswer[index] == answers[index] {
            scores[2] += 1
        }

        index += 1
    }
    
    for value in 0 ... 2 {
        print("scores: ", scores[value])
    }
    
    var biggestIndex: Int = 0
    for base in 0 ... 2 {
        for comp_base in 0 ... 2{
            if scores[base] > scores[comp_base] {
                biggestIndex = base
            }
        }
    }
    
    print("Biggest Index: ", biggestIndex)
    
    var people: [Int] = Array<Int>()
    people.append(biggestIndex)
    
    for value in (biggestIndex + 1) ... 2 {
        if scores[biggestIndex] == scores[value] {
            people.append(value)
        }
    }
    
    for value in 0 ... (people.count - 1) {
        people[value] += 1
    }
    return people
}

var p:[Int]     = solution([1,2,3,4,5])
var pTwo:[Int]    = solution([1,3,2,4,2])

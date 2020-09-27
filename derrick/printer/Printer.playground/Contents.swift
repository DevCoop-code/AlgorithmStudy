import UIKit

var str = "Hello, playground"


let firstPriorities:Array<Int> = [2,1,3,2]
let secondPriorities:Array<Int> = [1,1,9,1,1,1]


func solution(_ priorities:[Int], _ location:Int) -> Int {
    
       var queue: [(Int, Int)] = []
       var priorityQueue = priorities.sorted(by : >) // It need to arrange adescending align
       var result = 0
       
       priorities.enumerated().forEach { (index, property) in
           queue.append((index, property))
       }
       
       while !queue.isEmpty {
           
           if queue.first!.1 == priorityQueue.first! {
               
               if queue.first!.0  == location {
                   return result + 1
               }
               
               result += 1
               queue.removeFirst()
               priorityQueue.removeFirst()
            
           } else {
               queue.append(queue.removeFirst())
           }
       }
       
       return result

}

solution(firstPriorities, 2)
solution(secondPriorities, 0)

